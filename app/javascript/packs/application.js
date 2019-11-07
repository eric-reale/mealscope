import "bootstrap";

import { typedJS } from '../plugins/typed'
import { starsOnIndex } from '../components/starsOnIndex'
import { heartToggle} from '../components/heartToggle'
import { refreshForm } from '../components/collectionsAJAX'
import { addCollection } from '../components/collectionsAJAX'

// typedJS();
// starsOnIndex();
heartToggle();

refreshForm();
addCollection();
