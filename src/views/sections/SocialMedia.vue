<template>
  <v-theme-provider dark>
    <base-section
      id="social"
      class="accent text-center"
      space="56"
    >
      <base-icon class="mb-8">
        mdi-twitter
      </base-icon>

      <base-section-heading
        color="transparent"
        title="Social Media"
      >
        Follow us for the latest updates, news, and technical tips from fourier gauss labs.
      </base-section-heading>

      <div class="py-4" />

      <v-btn
        class="font-weight-bold"
        color="white"
        href="https://twitter.com/gausslabs"
        light
        min-width="168"
        target="_blank"
        x-large
      >
        Follow Us

        <v-icon right>
          mdi-open-in-new
        </v-icon>
      </v-btn>
    </base-section>
  </v-theme-provider>
</template>

<script>
  export default {
    name: 'SectionNews',

    provide: {
      heading: { align: 'center' },
    },
  }
</script>
