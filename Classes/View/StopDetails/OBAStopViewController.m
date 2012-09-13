/**
 * Copyright (C) 2009 bdferris <bdferris@onebusaway.org>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *         http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "OBAStopViewController.h"

@implementation OBAStopViewController

- (void) customSetup {
	NSArray * nib = [[NSBundle mainBundle] loadNibNamed:@"OBAArrivalsAndDeparturesHeaderView" owner:self options:nil];
	_headerView = [nib[0] retain];
}

- (void) dealloc {
	[_headerView release];
	[super dealloc];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
	OBAStopSectionType sectionType = [self sectionTypeForSection:section];
	if( sectionType == OBAStopSectionTypeArrivals ) {
		return _headerView;
	}
	return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
	OBAStopSectionType sectionType = [self sectionTypeForSection:section];
	if( sectionType == OBAStopSectionTypeArrivals ) {
		return 20;
	}
	return 0;
}

@end


