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

                <div id="iframe-container" class="w-full h-96"></div>
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

export default {
  name: 'Video',
  components: {
    Highlighter,
    HighlighterItem,
  },
  mounted() {
    // this.observeVisibility();
    const iframe = document.createElement('iframe');
    iframe.src = 'https://vk.com/video_ext.php?oid=-106352936&id=456239203&hash=d7d5e0b66c3b404b';
    iframe.async = true;
    iframe.className = 'w-full h-96';
    iframe.frameBorder = '0';
    iframe.allowFullscreen = true;
    iframe.allow = 'autoplay; encrypted-media; fullscreen; picture-in-picture';
    document.getElementById('iframe-container').appendChild(iframe);

  },
}
</script>
