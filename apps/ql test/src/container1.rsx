<Container
  id="container1"
  hoistFetching={true}
  showBody={true}
  style={{ ordered: [{ border: "rgba(255, 255, 255, 1)" }] }}
>
  <Header>
    <Text
      id="containerTitle1"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="bbeb8" viewKey="View 1">
    <Text
      id="text1"
      _defaultValue=""
      _disclosedFields={{ array: ["color"] }}
      style={{
        ordered: [
          { color: "rgb(56, 73, 136)" },
          { background: "" },
          { links: "" },
        ],
      }}
      value="#### Transaction Statistics"
      verticalAlign="center"
    />
    <Divider id="divider1" _disclosedFields={{ array: [] }} />
    <Statistic
      id="enterpriseStatistic"
      _disclosedFields={{ array: ["negative"] }}
      currency="USD"
      label="Enterprise Count"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces="0"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{
        ordered: [
          { negative: "danger" },
          { color: "" },
          { caption: "" },
          { positive: "" },
          { iconBackground: "" },
        ],
      }}
      value="{{paymentPlans.data.count['0']}}"
    />
    <Statistic
      id="transactionStatistic"
      _disclosedFields={{ array: [] }}
      decimalPlaces="2"
      label="Transaction Count"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces="0"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{getData.data.id.length}}"
    />
    <Statistic
      id="companyStatistic"
      _disclosedFields={{ array: ["negative"] }}
      currency="USD"
      label="Company Count"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces="0"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{
        ordered: [
          { negative: "danger" },
          { color: "" },
          { caption: "" },
          { positive: "" },
          { iconBackground: "" },
        ],
      }}
      value="{{new Set(getData.data.company).size}}"
    />
    <PlotlyChart
      id="transactionsChart"
      chartType="line"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "transactions" },
                { datasource: "{{getData.data}}" },
                { chartType: "line" },
                { aggregationType: "none" },
                { color: null },
                {
                  colors: {
                    ordered: [
                      { 0: "#033663" },
                      { 1: "#247BC7" },
                      { 2: "#55A1E3" },
                    ],
                  },
                },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="object"
      datasourceJS="{{getData.data}}"
      datasourcePluginId="getData"
      datasourcePluginType="plugin"
      groupByDropdown="plan"
      groupByJS="{{getData.data['plan']}}"
      isDataTemplateDirty={true}
      layout={include("../lib/transactionsChart.layout.json", "string")}
      xAxis="{{getData.data['transaction_date']}}"
      xAxisDropdown="transaction_date"
    />
  </View>
</Container>
