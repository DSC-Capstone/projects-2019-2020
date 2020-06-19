from skimage.color import rgb2gray
import numpy as np
import pickle
import matplotlib.pyplot as plt

def per_row_grayscale_var(painting, isGray=True, avg=False):
    if not isGray:
        painting = rgb2gray(painting)
        
    rows = painting.shape[0]
    row_variances = []
    
    for i in range(rows):
        row_variances.append(np.var(painting[i,:]))
    
    if avg:
        return np.mean(np.array(row_variances))
    
    return np.array(row_variances)

def edge_score(painting, isGray=True):
    if not isGray:
        painting = rgb2gray(painting)
        
    edges = ndimage.gaussian_gradient_magnitude(painting,sigma=1)
    plt.imshow(edges, cmap='gray')
    
    rows, cols = painting.shape
    
    row_avg = 0
    for r in range(rows):
        row_avg += sum(edges[r,:])
    row_avg /= rows
    
    col_avg = 0
    for c in range(cols):
        col_avg += sum(edges[:,c])
    col_avg /= cols
    
    
    return max(row_avg, col_avg)



def run_features():
	#LOAD IN TEST DATA
	img_files = ['./data/test/test_earlywar_images.data','./data/test/test_midwar_images.data',
						'./data/test/test_latewar_images.data']

	all_colors = []
	all_grays = []
	avg_edge = 0
	for i in img_files:
	    with open(i, 'rb') as filehandle:
	        # read the data as binary data stream
	        war_images = pickle.load(filehandle)
	    num_color = 0
	    num_grayscale = 0
	    
	    for img in war_images:
	        if len(img.shape)==3:
	                num_color += 1
	                avg_edge += per_row_grayscale_var(img,False,True)
	        if len(img.shape) == 2:
	                num_grayscale += 1
	                avg_edge += per_row_grayscale_var(img,True,True)
	    avg_edge /= len(war_images)
	    with open ("../data/out/table_scores.txt", 'w') as fh:
	    	fh.write(i + " has avg_edge_score: " + str(avg_edge) + "\n")

	    all_colors.append(num_color)
	    all_grays.append(num_grayscale)
	    del war_images
	
	fig = plt.figure()
	ax = fig.add_subplot(111)

	x = [i-0.2 for i in range(len(all_grays))]
	col = ax.bar(range(len(all_colors)),all_colors,width=0.2, color='r')
	gray = ax.bar(x,all_grays,width=0.2, color='black')
	ax.set_title("Color vs. Grayscale")
	ax.set_ylabel("Frequencies")
	ax.set_xticklabels( ('', 'Pre-War', '', 'Mid-War','', 'Late-War') )
	ax.legend((col[0], gray[0]), ('Color', 'Grayscale'));
	plt.savefig('../data/out/color_vs_grayscale.png')