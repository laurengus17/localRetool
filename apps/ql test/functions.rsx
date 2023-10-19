<GlobalFunctions>
  <SqlQueryUnified
    id="getData"
    query={include("./lib/getData.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="f7fbc82c-931b-4d9a-afc7-14d0cd66a69a"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="paymentPlans"
    query={include("./lib/paymentPlans.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="f7fbc82c-931b-4d9a-afc7-14d0cd66a69a"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="numberOfCustomers"
    query={include("./lib/numberOfCustomers.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="f7fbc82c-931b-4d9a-afc7-14d0cd66a69a"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <Function
    id="filteredTableData"
    funcBody={include("./lib/filteredTableData.js", "string")}
  />
  <Function id="chartData" funcBody={include("./lib/chartData.js", "string")} />
  <GraphQLQuery
    id="query4"
    body={include("./lib/query4.gql", "string")}
    graphQLVariables={'[{"key":"code","value":"{{country}}"}]'}
    importedQueryInputs={{ ordered: [{ country: "" }] }}
    isImported={true}
    playgroundQueryId={2}
    playgroundQueryName="get_country"
    playgroundQueryUuid="c886a2dd-3d9c-496a-abcd-29238521155e"
    resourceDisplayName="Countries"
    resourceName="f4461d22-c769-490b-8c52-f68e58d56fe3"
  />
</GlobalFunctions>
