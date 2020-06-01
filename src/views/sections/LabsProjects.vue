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
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis illum veniam cum dolores ratione commodi beatae quas maxime, laboriosam excepturi solut!
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
        },
        {
          title: 'Algebraic ML',
          icon: 'mdi-cellphone',
        },
        {
          color: 'primary',
          dark: true,
          title: 'Project Watermelon',
          icon: 'mdi-pencil-box-outline',
        },
        {
          title: 'Stealth Projects',
          icon: 'mdi-image-size-select-actual',
        },
      ],
    }),
  }
</script>
