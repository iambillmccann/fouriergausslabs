<template>
  <base-section id="labs-projects">
    <base-section-heading title="Projects in the Lab">
      Fourier Gauss was formed to provide a resource for entreprenuers and other "idea people" who don't
      have the technical skills to build their vision. Our mission is to help launch businesses by creating
      working prototypes of their creator's idea. Fourier Gauss has expertise in computer science, cloud
      architecture, machine learning, and UX design. We are committed to the principles of rapid application
      development. But Fourier Gauss Labs is more than computer programmers! We are the intersection of
      technology, entreprenuership, and investment. Oh yeah, we do consulting too.
    </base-section-heading>

    <v-container>
      <v-row>
        <v-col
          v-for="(feature, i) in features"
          :key="i"
          cols="12"
          md="6"
        >
          <base-avatar-card
            v-bind="feature"
            align="left"
            horizontal
          >
            {text}
          </base-avatar-card>
        </v-col>
      </v-row>
    </v-container>
  </base-section>
</template>

<script>
  export default {
    name: 'SectionThemeFeatures',

    data: () => ({
      features: [
        {
          title: 'Let\'s Hang',
          icon: 'mdi-fountain-pen-tip',
          text: 'Let\'s Hang is a mobile app created to make getting together in-person easier. It shouldn\'t be hard for friends to set up a time and place to hang out.',
        },
        {
          title: 'Algebraic ML',
          icon: 'mdi-cellphone',
          text: 'As an alternative to statistical learning, algebraic learning may offer advantages in combining bottom-up and top-down information, formal concept derivation from data and large-scale parallelization.',
        },
        {
          color: 'primary',
          dark: true,
          title: 'Project Watermelon',
          icon: 'mdi-pencil-box-outline',
          text: 'Nevermind the cute project name. A Broker Price Opinion is a report that is prepared by a real estate agent that details the likely selling price of a house. Watermelon computes that price.',
        },
        {
          title: 'Stealth Projects',
          icon: 'mdi-image-size-select-actual',
          text: 'Entreprenuers and start-ups are often very protective of their projects. Fourier Gauss is respectful of the need for confidentiality. We\'d love to tell you about our cool work, but sometimes we can\'t.',
        },
      ],
    }),
  }
</script>
