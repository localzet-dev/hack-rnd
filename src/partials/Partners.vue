<template>
  <section>
    <div class="relative max-w-6xl mx-auto px-4 sm:px-6">

      <!-- Particles animation -->
      <div class="absolute inset-0 max-w-6xl mx-auto px-4 sm:px-6">
        <Particles class="absolute inset-0 -z-10" :quantity="5"/>
      </div>

      <div class="py-6 md:py-10">
        <div class="overflow-hidden">
          <div
              class="clients-carousel swiper-container relative before:absolute before:inset-0 before:w-32 before:z-10 before:pointer-events-none before:bg-gradient-to-r before:from-neutral-950 after:absolute after:inset-0 after:left-auto after:w-32 after:z-10 after:pointer-events-none after:bg-gradient-to-l after:from-neutral-950">
            <div class="swiper-wrapper !ease-linear select-none items-center">
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedCenterInvest" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedAxenix" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedBeshtau" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedDatumSoft" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedIT" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedGarage" alt="Partner" style="filter: invert();"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedEltex" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedForabank" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedIktin" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedKaspersky" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedSber" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedMediapark" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedOdgetto" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedSpecialUniversityAutomation" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedTTK" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedWebpractik" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedPride" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedRcsi" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedRsc" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedGreenwich" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedY" alt="Partner"/>
              </div>
              <div class="swiper-slide w-fit">
                <img class="image" :src="CompressedDD" alt="Partner"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <svg width="0" height="0" viewBox="0 0 20 20">
      <filter id="inset-shadow">
        <feOffset dx="0" dy="0"></feOffset>
        <feGaussianBlur stdDeviation="10" result="offset-blur"></feGaussianBlur>
        <feComposite operator="out" in="SourceGraphic" in2="offset-blur" result="inverse"></feComposite>
        <feFlood flood-color="gray" flood-opacity=".95" result="color"></feFlood>
        <feComposite operator="in" in="color" in2="inverse" result="shadow"></feComposite>
        <feComposite operator="over" in="shadow" in2="SourceGraphic"></feComposite>
      </filter>
    </svg>
  </section>
</template>

<script>
import {onMounted} from 'vue'
import Particles from './Particles.vue'

// Import Swiper
import Swiper, {Autoplay} from 'swiper'
import 'swiper/css'

import CompressedCenterInvest from '../images/partners/center-invest.png?h=78&format=webp';
import CompressedAxenix from '../images/partners/axenix.png?h=78&format=webp';
import CompressedBeshtau from '../images/partners/beshtau.png?h=78&format=webp';
import CompressedDatumSoft from '../images/partners/datum-soft.png?h=78&format=webp';
import CompressedIT from '../images/partners/it.png?h=78&format=webp';
import CompressedGarage from '../images/partners/garage.png?h=78&format=webp';
import CompressedEltex from '../images/partners/eltex.png?h=78&format=webp';
import CompressedForabank from '../images/partners/forabank.png?h=78&format=webp';
import CompressedIktin from '../images/partners/iktin.png?h=78&format=webp';
import CompressedKaspersky from '../images/partners/kaspersky.png?h=78&format=webp';
import CompressedSber from '../images/partners/sber.png?h=78&format=webp';
import CompressedMediapark from '../images/partners/mediapark.png?h=78&format=webp';
import CompressedOdgetto from '../images/partners/odgetto.png?h=78&format=webp';
import CompressedSpecialUniversityAutomation from '../images/partners/special-university-automation.png?h=78&format=webp';
import CompressedTTK from '../images/partners/ttk.png?h=78&format=webp';
import CompressedWebpractik from '../images/partners/webpractik.png?h=78&format=webp';
import CompressedPride from '../images/partners/pride.png?h=78&format=webp';
import CompressedRcsi from '../images/partners/rcsi.png?h=78&format=webp';
import CompressedRsc from '../images/partners/rsc.png?h=78&format=webp';
import CompressedGreenwich from '../images/partners/greenwich.png?h=78&format=webp';
import CompressedY from '../images/partners/y.png?h=78&format=webp';
import CompressedDD from '../images/partners/dd.png?h=78&format=webp';

Swiper.use([Autoplay])

export default {
  name: 'Partners',
  components: {
    Particles
  },
  setup() {
    onMounted(() => {
      const carousel = new Swiper('.clients-carousel', {
        slidesPerView: 'auto',
        grabCursor: true,
        loop: true,
        centeredSlides: true,
        initialSlide: 8,
        spaceBetween: 64,
        speed: 10000,
        autoplay: {
          delay: 0,
          disableOnInteraction: true,
        },
      })
    })
  },
  data() {
    return {
      CompressedCenterInvest,
      CompressedAxenix,
      CompressedBeshtau,
      CompressedDatumSoft,
      CompressedIT,
      CompressedGarage,
      CompressedEltex,
      CompressedForabank,
      CompressedIktin,
      CompressedKaspersky,
      CompressedSber,
      CompressedMediapark,
      CompressedOdgetto,
      CompressedSpecialUniversityAutomation,
      CompressedTTK,
      CompressedWebpractik,
      CompressedPride,
      CompressedRcsi,
      CompressedRsc,
      CompressedGreenwich,
      CompressedY,
      CompressedDD,
    };
  },
}
</script>