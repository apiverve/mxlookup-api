declare module '@apiverve/mxlookup' {
  export interface mxlookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface mxlookupResponse {
    status: string;
    error: string | null;
    data: MXLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface MXLookupData {
      domain: null | string;
      mx:     MX[];
  }
  
  interface MX {
      priority: number | null;
      exchange: null | string;
  }

  export default class mxlookupWrapper {
    constructor(options: mxlookupOptions);

    execute(callback: (error: any, data: mxlookupResponse | null) => void): Promise<mxlookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: mxlookupResponse | null) => void): Promise<mxlookupResponse>;
    execute(query?: Record<string, any>): Promise<mxlookupResponse>;
  }
}
