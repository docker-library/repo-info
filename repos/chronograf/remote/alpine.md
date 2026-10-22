## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:ab0f2c10c833bd3d1eba6b8b605168eea0549f4d0f2f7f54c445dd4632bc7d73
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:4628202217ac36a39fcb5e88969f6bad9127427a20b1fddfd94e67c92d1f6329
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66188394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e6fba14772d5d1eb1a744f8ae96cfc0b0b023aa365ad7b124d49d25ff267d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:43 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 22:56:43 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 21 Oct 2026 22:56:48 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 22:56:48 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 22:56:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 22:56:48 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9759ba25c76d4818b89976f2e4d251e89986804c2e7cb1c6deb0fcd0d0ff89eb`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8382c7b4ff3d64984f58a522f404991b65aee9f9e25f04223e120ce9dd1cb6a`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 293.8 KB (293838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9d4b0ab166c75ea0910b256238ce16d5e4865744a2030fa422a41c6fe8e30f`  
		Last Modified: Wed, 21 Oct 2026 22:57:02 GMT  
		Size: 62.0 MB (62016712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69309e6b5ce93c7b458ec1d8ca0f48b52ed688bfaefe86367cad0e975a461fdb`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d53fc750e080a5551080dc2e29d1a43ceb074261a7d822b9e5a38967d72a6cc`  
		Last Modified: Wed, 21 Oct 2026 22:57:01 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2206c738c2f1cb70eb925eadd588b0abca5d09743ec259d9bd9553099ee26560`  
		Last Modified: Wed, 21 Oct 2026 22:57:01 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:398c76d5c1c79f5ae364ed1b8ce018181852ceef50d5710df7722a7c61f8db12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 KB (270475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395a136efda5e2d7a6a8f7f67e9df4af475f9342b9365aa978f3ab9e77592795`

```dockerfile
```

-	Layers:
	-	`sha256:b66e9fc3f9849c3e1b1e76cb1afdf7518d88a356fd65c9b6cf1ca058b6cf4695`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 252.7 KB (252711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c348fda07fa4b0e60ccae22ba5c09ef2b076e41ab784431c8d91b0a1751cab89`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json
