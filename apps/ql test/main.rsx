<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Include src="./sidebar.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <Text
      id="text12"
      _defaultValue=""
      _disclosedFields={{ array: ["color"] }}
      horizontalAlign="center"
      style={{
        ordered: [
          { color: "rgb(56, 73, 136)" },
          { background: "" },
          { links: "" },
        ],
      }}
      value="### Transactions Dashboard"
      verticalAlign="center"
    />
    <Container
      id="container2"
      hoistFetching={true}
      showBody={true}
      style={{ ordered: [{ border: "rgba(255, 255, 255, 1)" }] }}
    >
      <Header>
        <Text
          id="containerTitle2"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="bbeb8" viewKey="View 1">
        <Text
          id="text4"
          _defaultValue=""
          _disclosedFields={{ array: ["color", "links"] }}
          style={{
            ordered: [
              { color: "rgb(56, 73, 136)" },
              { background: "" },
              { links: "primary" },
            ],
          }}
          value="#### Plan Distribution"
          verticalAlign="center"
        />
        <Divider id="divider3" _disclosedFields={{ array: [] }} />
        <PlotlyChart
          id="planChart"
          chartType="pie"
          data={include("./lib/planChart.data.json", "string")}
          datasourceInputMode="javascript"
          isJsonTemplateDirty={true}
          layout={include("./lib/planChart.layout.json", "string")}
        />
      </View>
    </Container>
    <Include src="./src/container1.rsx" />
    <Include src="./src/container3.rsx" />
  </Frame>
</App>
