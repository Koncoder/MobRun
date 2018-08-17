import "bootstrap";

import { fade } from "./headerfade";
import { countdown } from "countdown";
import { initSliderLogic } from  "../components/slider";

fade();
window.countdown = countdown;
initSliderLogic();
