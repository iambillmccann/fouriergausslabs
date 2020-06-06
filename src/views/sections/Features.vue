<template>
  <base-section
    id="features"
    class="secondary"
  >
    <v-responsive
      class="mx-auto"
      max-width="1350"
    >
      <v-container fluid>
        <v-row>
          <v-col
            v-for="card in cards"
            :key="card.title"
            cols="12"
            sm="4"
            md="3"
          >
            <base-info-card
              align="center"
              dark
              v-bind="card"
            />
          </v-col>
        </v-row>
      </v-container>
    </v-responsive>
  </base-section>
</template>

<script>
  export default {
    name: 'SectionFeatures',

    data: () => ({
      cards: [
        {
          icon: 'mdi-set-square',
          title: 'Modern Design',
          text: 'We build mobile and web applications. We follow Material Design guidelines to build modern and clean UX quickly.',
        },
        {
          icon: 'mdi-cloud-outline',
          title: 'Cloud Computing',
          text: 'Our team is cloud agnostic. Our products and protypes can target any of the major cloud platforms from Amazon, Microsoft, and Google.',
        },
        {
          icon: 'mdi-flask-empty-outline',
          title: 'Data Science',
          text: 'We understand that data is at the heart of all modern apps. Our experts will build and test machine learning models to power our products.',
        },
        {
          icon: 'mdi-puzzle-outline',
          title: 'Rapid App Development',
          text: 'We are passionate believers in rapid application development through Agile methods and continuous delivery. Nevermind the jargon; we\'re fast.',
        },
      ],
    }),
  }
</script>
