declare module '@apiverve/mxlookup' {
  export interface mxlookupOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface mxlookupResponse {
    status: string;
    error: string | null;
    data: MXLookupData;
    code?: number;
  }


  interface MXLookupData {
      domain: string;
      mx:     MX[];
  }
  
  interface MX {
      priority: number;
      exchange: string;
  }

  export default class mxlookupWrapper {
    constructor(options: mxlookupOptions);

    execute(callback: (error: any, data: mxlookupResponse | null) => void): Promise<mxlookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: mxlookupResponse | null) => void): Promise<mxlookupResponse>;
    execute(query?: Record<string, any>): Promise<mxlookupResponse>;
  }
}
