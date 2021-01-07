" eat characters after abbreviation
function! Eatchar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunction

iabbrev <silent> ctp constructor(props) {<CR>super(props);<CR>}<c-r>=Eatchar('\s')<CR>
iabbrev <silent> tss this.setState({});<left><left><left><c-r>=Eatchar('\s')<CR>
iabbrev <silent> iwr import { withRouter } from 'react-router';<c-r>=Eatchar('\s')<CR>
iabbrev <silent> iwt import { withTracker } from 'meteor/react-meteor-data';<c-r>=Eatchar('\s')<CR>
iabbrev <silent> imt import { Meteor } from 'meteor/meteor';<c-r>=Eatchar('\s')<CR>
iabbrev <silent> ipt import { PropTypes } from 'prop-types';<c-r>=Eatchar('\s')<CR>
iabbrev <silent> spt static propTypes = {};<left><left><c-r>=Eatchar('\s')<CR>
iabbrev <silent> pto PropTypes.object<c-r>=Eatchar('\s')<CR>
iabbrev <silent> ptb PropTypes.bool<c-r>=Eatchar('\s')<CR>
iabbrev <silent> pta PropTypes.arrayOf()<c-r>=Eatchar('\s')<CR>
iabbrev <silent> ptf PropTypes.func<c-r>=Eatchar('\s')<CR>
iabbrev <silent> pts PropTypes.string<c-r>=Eatchar('\s')<CR>
