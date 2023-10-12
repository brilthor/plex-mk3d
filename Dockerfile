FROM plexinc/pms-docker:REPLACETAG

RUN grep mk3d /usr/lib/plexmediaserver/Resources/Plug-ins*/Scanners.bundle/Contents/Resources/Common/VideoFiles.py ; \
sed -i "s/'m2v', 'm4v'/'m2v', 'm4v', 'mk3d'/" /usr/lib/plexmediaserver/Resources/Plug-ins*/Scanners.bundle/Contents/Resources/Common/VideoFiles.py; \
sed -i "s/'m2v', 'm4v'/'m2v', 'm4v', 'mk3d'/" /usr/lib/plexmediaserver/Resources/Plug-ins*/LocalMedia.bundle/Contents/Code/config.py
