<template>
  <base-section
    id="info-alt"
    space="56"
  >
    <v-container>
      <v-row justify="space-between">
        <v-col
          cols="12"
          md="5"
        >
          <v-row
            v-for="card in cards"
            :key="card.title"
            class="cols md"
          >
            <base-info-card v-bind="card" />
          </v-row>
        </v-col>

        <v-col
          cols="12"
          md="6"
        >
          <base-contact-form title="MAIL US YOUR MESSAGE" />
        </v-col>
      </v-row>
    </v-container>
  </base-section>
</template>

<script>
  export default {
    name: 'SectionKeepInTouch',
    data: () => ({
      cards: [
        {
          title: 'Entreprenuers',
          text: 'Please describe your app at a high level with enough detail so we can gauge the project\'s level of effort.',
          callout: '01',
        },
        {
          title: 'Developers',
          text: 'Please provide your skillset and the types of technology that you wish to work with.',
          callout: '02',
        },
        {
          title: 'Investors',
          text: 'Get in on the ground floor of great ideas. Let us know the type of project you are interested in.',
          callout: '03',
        },
      ],
    }),
  }
</script>
