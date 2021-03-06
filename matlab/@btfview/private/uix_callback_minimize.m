% *************************************************************************
% * Copyright 2015 University of Bonn
% *
% * authors:
% *  - Sebastian Merzbach <merzbach@cs.uni-bonn.de>
% *
% * last modification date: 2015-03-31
% *
% * This file is part of btfapps.
% * 
% * btfapps is free software: you can redistribute it and/or modify it
% * under the terms of the GNU General Public License as published by the
% * Free Software Foundation, either version 3 of the License, or (at your
% * option) any later version.
% * 
% * btfapps is distributed in the hope that it will be useful, but WITHOUT
% * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
% * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
% * for more details.
% * 
% * You should have received a copy of the GNU General Public License along
% * with btfapps. If not, see <http://www.gnu.org/licenses/>.
% *
% *************************************************************************
%
% React to UIX panel minimize / restore button clicks.
function obj = uix_callback_minimize(obj, src, evnt, uixobj) %#ok<INUSL>
    % angular sampling can be minimized
    if uixobj == obj.handles.uix_boxpanel_sampling
        if uixobj.IsDocked
            vbox = obj.handles.uix_vbox_upper_right;
            index = find(vbox.Children == get(obj.handles.ah_sampling, 'Parent'));
            heights = get(vbox, 'Sizes');
            uixobj.IsMinimized = ~uixobj.IsMinimized;
            if uixobj.IsMinimized
                heights(index) = 20;
            else
                heights(index) = -1;
            end
            set(vbox, 'Sizes', heights);
        end
    end
end
