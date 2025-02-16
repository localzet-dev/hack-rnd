<template>
  <section class="relative">
    <div class="max-w-6xl mx-auto px-4 sm:px-6">
      <div class="max-w-3xl mx-auto">
        <div data-aos="fade-down">
          <Highlighter class="group">
            <HighlighterItem>
              <div class="relative h-auto bg-neutral-900 rounded-[inherit] z-20 overflow-hidden">
                <!-- Radial gradient -->
                <div
                    class="absolute bottom-0 translate-y-1/2 left-1/2 -translate-x-1/2 pointer-events-none -z-10 w-1/2 aspect-square"
                    aria-hidden="true">
                  <div class="absolute inset-0 translate-z-0 bg-green-500 rounded-full blur-[120px]"></div>
                </div>

                <lazy-iframe v-if="isVisible" id="iframe-container" class="w-full h-96" :src="videoSrc"></lazy-iframe>
              </div>
            </HighlighterItem>
          </Highlighter>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import Highlighter from './Highlighter.vue'
import HighlighterItem from './HighlighterItem.vue'
import VueLazyload from 'vue-lazyload'

export default {
  name: 'Video',
  components: {
    Highlighter,
    HighlighterItem,
    lazyIframe: VueLazyload.component('lazy-iframe'),
  },
  data() {
    return {
      videoSrc: 'https://vk.com/video_ext.php?oid=-106352936&id=456239203&hash=d7d5e0b66c3b404b',
      isVisible: false,
    };
  },
  mounted() {
    this.observeVisibility();
  },
  methods: {
    observeVisibility() {
      const observer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
          if (entry.isIntersecting) {
            this.isVisible = true;
            observer.disconnect();
          }
        });
      });

      observer.observe(this.$el);
    },
  },
}
</script>
