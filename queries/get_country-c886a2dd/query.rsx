<PlaygroundQuery
  id="get_country"
  adhocResourceType={null}
  data={null}
  resourceType="graphql"
>
  <GraphQLQuery
    allowedGroups={[]}
    body={include("./lib/get_country.gql", "string")}
    events={[]}
    graphQLVariables={'[{"key":"code","value":"{{country}}"}]'}
    importedQueryDefaults={{ country: "" }}
    importedQueryInputs={{ country: "" }}
    privateParams={[]}
    watchedParams={[]}
  />
</PlaygroundQuery>
