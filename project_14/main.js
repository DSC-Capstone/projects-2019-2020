Highcharts.chart('film_timeline', {
    chart: {
        type: 'timeline',
        inverted: true,
        backgroundColor: '#ece9e6',
        marginLeft: 20,
        spacingTop: 20,
        spacingBottom: 40,
    },
    title: {
        text: "Timeline of Actress Maggie Cheung's High Rating Movies in IMDbs",
        style:{
          'font-weight': 'bold',
          'font-family': 'Georgia'
        }
    },
    subtitle: {
        text: 'Info source: <a href="https://www.imdb.com/name/nm0001041/">https://www.imdb.com</a>'
    },
    buttons: {
      contextButton: {
        menuItems: [
          "switchChart",
          "separator",
          "printChart",
          "separator",
          "downloadPNG",
          "downloadJPEG",
          "downloadPDF",
          "downloadSVG"
        ]
      }
    },
    xAxis: {
        visible: false
    },
    yAxis: {
        visible: false
    },
    series: [{
      dataLabels: {
            connectorColor: 'silver',
            connectorWidth: 2
        },
        marker: {
            symbol: 'circle'
        },
      data: [{"name": "Festival International De Cannes", "label": "Year: 1969", "description": "Rating: 7.2, Director: Didier Froehly"}, {"name": "Film '72", "label": "Year: 1971", "description": "Rating: 7.2, Director: Bex Palmer"}, {"name": "San Jaat Si Hing", "label": "Year: 1984", "description": "Rating: 8.2, Director: "}, {"name": "Wak Chu Choi Hong", "label": "Year: 1984", "description": "Rating: 8.4, Director: "}, {"name": "Mei Gui Di Gu Shi", "label": "Year: 1985", "description": "Rating: 7.1, Director: Yonfan"}, {"name": "Ging Chaat Goo Si", "label": "Year: 1985", "description": "Rating: 7.6, Director: Jackie Chan"}, {"name": "Yang Ka Cheung", "label": "Year: 1986", "description": "Rating: 8.0, Director: "}, {"name": "'a' Gai Wak 2", "label": "Year: 1987", "description": "Rating: 7.1, Director: Jackie Chan"}, {"name": "The Incredibly Strange Film Show", "label": "Year: 1988", "description": "Rating: 8.2, Director: Andy Harries"}, {"name": "Wong Gok Ka Moon", "label": "Year: 1988", "description": "Rating: 7.0, Director: Kar-Wai Wong"}, {"name": "Ging Chaat Goo Si Juk Jaap", "label": "Year: 1988", "description": "Rating: 7.1, Director: Jackie Chan"}, {"name": "Fei Mau Lau Long Gei", "label": "Year: 1988", "description": "Rating: 7.2, Director: Kin-Nam Cho"}, {"name": "Ke Tu Qiu Hen", "label": "Year: 1990", "description": "Rating: 7.4, Director: Ann Hui"}, {"name": "Ai Zai Bie Xiang De Ji Jie", "label": "Year: 1990", "description": "Rating: 7.1, Director: Clara Law"}, {"name": "Ah Fei Zing Zyun", "label": "Year: 1990", "description": "Rating: 7.6, Director: Kar-Wai Wong"}, {"name": "Gun Gun Hong Chen", "label": "Year: 1990", "description": "Rating: 7.1, Director: Ho Yim"}, {"name": "Ruan Lingyu", "label": "Year: 1991", "description": "Rating: 7.5, Director: Stanley Kwan"}, {"name": "Seung Sing Gusi", "label": "Year: 1991", "description": "Rating: 7.0, Director: Peter Ho-Sun Chan"}, {"name": "San Lung Moon Hak Chan", "label": "Year: 1992", "description": "Rating: 7.3, Director: Raymond Lee"}, {"name": "Leung Goh Nuijen, Yat Goh Leng, Yat Goh M Leng", "label": "Year: 1992", "description": "Rating: 7.1, Director: Stanley Kwan"}, {"name": "Ga Yau Hei Si", "label": "Year: 1992", "description": "Rating: 7.3, Director: Clifton Ko"}, {"name": "Se Diu Ying Hung: Dung Sing Sai Jau", "label": "Year: 1993", "description": "Rating: 7.2, Director: Jeffrey Lau"}, {"name": "Ching Se", "label": "Year: 1993", "description": "Rating: 7.2, Director: Hark Tsui"}, {"name": "Dung Che Sai Duk", "label": "Year: 1994", "description": "Rating: 7.2, Director: Kar-Wai Wong"}, {"name": "Irma Vep", "label": "Year: 1996", "description": "Rating: 7.0, Director: Olivier Assayas"}, {"name": "Tian Mi Mi", "label": "Year: 1996", "description": "Rating: 8.1, Director: Peter Ho-Sun Chan"}, {"name": "Song Jia Huang Chao", "label": "Year: 1997", "description": "Rating: 7.0, Director: Mabel Cheung"}, {"name": "Paskvil", "label": "Year: 1997", "description": "Rating: 8.1, Director: Otak\u00e1ro Schmidt"}, {"name": "Faa Yeung Nin Wa", "label": "Year: 2000", "description": "Rating: 8.1, Director: Kar-Wai Wong"}, {"name": "Faa Yeung Nin Wa", "label": "Year: 2000", "description": "Rating: 8.1, Director: Kar-Wai Wong"}, {"name": "Le Bel Hiver", "label": "Year: 2000", "description": "Rating: 7.0, Director: Olivier Torres"}, {"name": "Ying Xiong", "label": "Year: 2002", "description": "Rating: 7.9, Director: Yimou Zhang"}, {"name": "2046", "label": "Year: 2004", "description": "Rating: 7.4, Director: Kar-Wai Wong"}, {"name": "Banda Sonora", "label": "Year: 2007", "description": "Rating: 7.1, Director: Josep Morell"}, {"name": "Inglourious Basterds", "label": "Year: 2009", "description": "Rating: 8.3, Director: Quentin Tarantino"}, {"name": "Better Life", "label": "Year: 2010", "description": "Rating: 7.6, Director: Isaac Julien"}, {"name": "The Story Of Film: An Odyssey", "label": "Year: 2011", "description": "Rating: 8.5, Director: Mark Cousins"}]
    }]
});

Highcharts.chart('word_cloud', {
    chart: {
        backgroundColor: '#ece9e6',
        marginLeft: 50,
        spacingTop: 20,
        spacingBottom: 40,
    },
    series: [{
        type: 'wordcloud',
        data: [{"name": "NEWS", "weight": 1}, {"name": "TALK-SHOW", "weight": 1}, {"name": "ACTION", "weight": 8}, {"name": "DRAMA", "weight": 22}, {"name": "ROMANCE", "weight": 12}, {"name": "COMEDY", "weight": 6}, {"name": "CRIME", "weight": 5}, {"name": "THRILLER", "weight": 3}, {"name": "DOCUMENTARY", "weight": 2}, {"name": "WAR", "weight": 2}, {"name": "BIOGRAPHY", "weight": 2}, {"name": "SHORT", "weight": 2}, {"name": "FANTASY", "weight": 2}, {"name": "HISTORY", "weight": 3}, {"name": "ADVENTURE", "weight": 2}, {"name": "SCI-FI", "weight": 1}, {"name": "MUSIC", "weight": 1}],
        name: 'Occurrences'
    }],
    buttons: {
      contextButton: {
        menuItems: [
          "switchChart",
          "separator",
          "printChart",
          "separator",
          "downloadPNG",
          "downloadJPEG",
          "downloadPDF",
          "downloadSVG"
        ]
      }
    },
    title: {
        text: "Word Cloud of the Genres of Maggie Cheung's High Rated Films in IMDbs",
        style:{
          'font-weight': 'bold',
          'font-family': 'Georgia'
        }
    },
    subtitle: {
        text: 'Info source: <a href="https://www.imdb.com/name/nm0001041/">https://www.imdb.com</a>'
    },
});

Highcharts.chart('bubble_chart', {
    chart: {
        type: 'bubble',
        plotBorderWidth: 1,
        zoomType: 'xy',
        backgroundColor: '#ece9e6',
        spacingTop: 20,
        spacingBottom: 40,
    },
    legend: {
        enabled: false
    },
    title: {
        text: 'Average Rating of the Movie for the Cooperation between Different Directors and Actress Maggie Cheung',
        style:{
          'font-weight': 'bold',
          'font-family': 'Georgia'
        }
    },
    subtitle: {
        text: 'Info source: <a href="https://www.imdb.com/name/nm0001041/">https://www.imdb.com</a>'
    },
    xAxis: {
        alternateGridColor: "#DBDBDB",
        gridLineWidth: 1,
        title: {
            text: 'Most Recent Cooperation Year'
        },
        labels: {
            format: 'Year {value}'
        }
    },
    yAxis: {
        startOnTick: false,
        endOnTick: false,
        title: {
            text: 'Average Rating'
        },
        labels: {
            format: '{value}'
        },
        maxPadding: 0.2
    },
    buttons: {
      contextButton: {
        menuItems: [
          "switchChart",
          "separator",
          "printChart",
          "separator",
          "downloadPNG",
          "downloadJPEG",
          "downloadPDF",
          "downloadSVG"
        ]
      }
    },
    tooltip: {
       useHTML: true,
       headerFormat: '<table>',
       pointFormat: '<tr><th style = "font-size:10", colspan="2"><h3>Director {point.name}</h3></th></tr>' +
           '<tr><th style = "font-size:10">Most Recent Cooperation:</th><td style = "font-size:10">Year {point.x}</td></tr>' +
           '<tr><th style = "font-size:10">Average Rating:</th><td style = "font-size:10">{point.y}</td></tr>' +
           '<tr><th style = "font-size:10">Total Number of Cooperation:</th><td style = "font-size:10">{point.z} time(s)</td></tr>',
       footerFormat: '</table>',
       followPointer: true,
       style:{
         'font-size': 10,
         'font-family': 'Georgia'
       }
   },
    plotOptions: {
        series: {
            dataLabels: {
                enabled: false,
            }
        }
    },
    series: [{
        data: [{"name": "Unavailable", "x": 1986, "y": 8.200000000000001, "z": 3},
        {"name": "Andy Harries", "x": 1988, "y": 8.2, "z": 1},
        {"name": "Ann Hui", "x": 1990, "y": 7.4, "z": 1},
        {"name": "Bex Palmer", "x": 1971, "y": 7.2, "z": 1},
        {"name": "Clara Law", "x": 1990, "y": 7.1, "z": 1},
        {"name": "Clifton Ko", "x": 1992, "y": 7.3, "z": 1},
        {"name": "Didier Froehly", "x": 1969, "y": 7.2, "z": 1},
        {"name": "Hark Tsui", "x": 1993, "y": 7.2, "z": 1},
        {"name": "Ho Yim", "x": 1990, "y": 7.1, "z": 1},
        {"name": "Isaac Julien", "x": 2010, "y": 7.6, "z": 1},
        {"name": "Jackie Chan", "x": 1988, "y": 7.266666666666666, "z": 3},
        {"name": "Jeffrey Lau", "x": 1993, "y": 7.2, "z": 1},
        {"name": "Josep Morell", "x": 2007, "y": 7.1, "z": 1},
        {"name": "Kar-Wai Wong", "x": 2004, "y": 7.566666666666666, "z": 6},
        {"name": "Kin-Nam Cho", "x": 1988, "y": 7.2, "z": 1},
        {"name": "Mabel Cheung", "x": 1997, "y": 7.0, "z": 1},
        {"name": "Mark Cousins", "x": 2011, "y": 8.5, "z": 1},
        {"name": "Olivier Assayas", "x": 1996, "y": 7.0, "z": 1},
        {"name": "Olivier Torres", "x": 2000, "y": 7.0, "z": 1},
        {"name": "Otak\u00e1ro Schmidt", "x": 1997, "y": 8.1, "z": 1},
        {"name": "Peter Ho-Sun Chan", "x": 1996, "y": 7.55, "z": 2},
        {"name": "Quentin Tarantino", "x": 2009, "y": 8.3, "z": 1},
        {"name": "Raymond Lee", "x": 1992, "y": 7.3, "z": 1},
        {"name": "Stanley Kwan", "x": 1992, "y": 7.3, "z": 2},
        {"name": "Yimou Zhang", "x": 2002, "y": 7.9, "z": 1},
        {"name": "Yonfan", "x": 1985, "y": 7.1, "z": 1}]
    }]
});
