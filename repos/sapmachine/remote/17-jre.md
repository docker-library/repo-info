## `sapmachine:17-jre`

```console
$ docker pull sapmachine@sha256:3f21cb83660a23c6e23421a9e05b503bf7a6d64997a35cbdf3a3e888fe073cac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre` - linux; amd64

```console
$ docker pull sapmachine@sha256:ba427aab0fdfc960d222a5d2341c242b2cab76eb155057310bcf126699f9d075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87783038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda97556f3bd51a5c8fad08d550f17f482fa4c6fce9762d91170e1fcdda8f68c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:42:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.21.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:42:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 18 Nov 2026 16:42:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbb2d10c8603aa46af670ed327b6287a1f010a21e7b3f28503fa9ad90d10d68`  
		Last Modified: Wed, 18 Nov 2026 16:42:58 GMT  
		Size: 58.0 MB (57989815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fb9a32989e9d267986836e419704a11aa2ea18dbe8477b7de13e7cc5eadd9547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2532840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec7e7ba286cab6980161ea9c23ba185d347003199bc6e8dfcf875dc263cfffe`

```dockerfile
```

-	Layers:
	-	`sha256:9c59451ccc170542333f44351276d1112e925cfe94f0c4636bdb0e95d1308af5`  
		Last Modified: Wed, 18 Nov 2026 16:42:56 GMT  
		Size: 2.5 MB (2522072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2cd36ac67446e9afdf291cc9ef7381f4bfe6e5eaf45b7857cb11b591b033a37`  
		Last Modified: Wed, 18 Nov 2026 16:42:56 GMT  
		Size: 10.8 KB (10768 bytes)  
		MIME: application/vnd.in-toto+json
