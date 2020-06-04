<template>
  <base-section id="about-our-product">
    <base-section-heading
      color="grey lighten-2"
      icon="mdi-vuetify"
      title="About our Service"
    />

    <v-container>
      <v-row>
        <v-col
          v-for="card in cards"
          :key="card.title"
          cols="12"
          md="4"
        >
          <base-info-card v-bind="card" />
        </v-col>
      </v-row>
    </v-container>
  </base-section>
</template>

<script>
  export default {
    name: 'SectionAboutOurProduct',

    data: () => ({
      cards: [
        {
          title: 'Show Off Your Idea',
          subtitle: 'Entreprenuers',
          text: 'Get a working prototype for your idea. Quickly. Pitch decks are great, but there\'s nothing like swiping through an actual app.',
          callout: '01',
        },
        {
          title: 'Sharpen Your Skills',
          subtitle: 'Developers',
          text: 'Keep up to date by working with a start-up and build something new and exciting. Coding is great when you are developing with a purpose.',
          callout: '02',
        },
        {
          title: 'Discover',
          subtitle: 'Investors',
          text: 'Get in on the ground floor of great ideas. Fourier Gauss Labs is where entreprenuer meets developer and means opportunity.',
          callout: '03',
        },
      ],
    }),
  }
</script>
