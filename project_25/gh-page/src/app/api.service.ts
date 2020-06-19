import { HttpClient } from '@angular/common/http'
import { Injectable } from '@angular/core'
import { Result } from './output-results/output-results.component'

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  constructor(private http: HttpClient) {}
  /**
   * Retrieves similarity report from server
   * @param  code     Array of code to send to server
   * @param  password Password of server
   * @return          Results of similarity analysis
   */
  async getReport(code: string[], password?: string): Promise<Result> {
    let body: string = ''
    for (let [index, element] of code.entries()) {
      body += `input${index + 1}=${encodeURIComponent(element)}&`
    }

    return await this.http.post<Result>('http://demo.codehonestly.com:5000/simreport', password === undefined ? body.slice(0, -1) : body + `password=${password}`, {
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      responseType: 'json'
    }).toPromise()
  }

  /**
   * Retrieves visualization JSON from server
   * @param  code Code to send to server
   * @return      JSON-format object ready to be passed into vtree
   */
  async getVisualization(code: string): Promise<PreprocessingServerResponse> {
    return await this.http.post<PreprocessingServerResponse>('http://demo.codehonestly.com:5000/ast2json', `input=${encodeURIComponent(code)}&normalize=true&ctx=false`, {
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      responseType: 'json'
    }).toPromise()
  }
}

export interface PreprocessingServerResponse {
  imports: object
  graph: object
}
