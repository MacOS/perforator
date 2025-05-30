import React from 'react';

import { Hotkey as GravityHotkey } from '@gravity-ui/uikit';

import './Hotkey.css';


export interface HotkeyProps {
    value: string;
}

export const Hotkey: React.FC<HotkeyProps> = props => (
    <GravityHotkey
        className="hotkey"
        {...props}
    />
);
