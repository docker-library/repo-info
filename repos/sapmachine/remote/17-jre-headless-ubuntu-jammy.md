## `sapmachine:17-jre-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:f9e3c93d399c583b8eb63db9de3a83ef77998d35c1c07afdadf7f2a2cbcd9001
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:a12262363f9e58a3bc5587514b7b4f79a75b4a5f1b3f36e5123159b760858b7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.0 MB (86031399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05fb46b71dfd9082cd5a698dabfe5a45960fc22d83ad2316caac01ee34e2abc7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:34:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.21.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:34:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 20 Nov 2026 03:34:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96904a51be35a4712f5ebc75a818e3465a9363d1c2d386e93f564b2fae9382ba`  
		Last Modified: Fri, 20 Nov 2026 03:34:15 GMT  
		Size: 56.0 MB (55961584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e7a1099e6d26d97e720175936dc08749dec28620e8f1fccf32de3ed2185d15c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2305846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:268e742584e5a74fcd972769b3f8e9b1646c7b9e93a0233c706c3564308ac0da`

```dockerfile
```

-	Layers:
	-	`sha256:d5e3ff5dfa618a2daa6e872d0331aa5fc94ef6a0d88713a4eb09dd778e739c60`  
		Last Modified: Fri, 20 Nov 2026 03:34:14 GMT  
		Size: 2.3 MB (2296247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b544a5c386f4e59c5505e647441d2e69667f4488d58230aa80eda4a1c9f56c95`  
		Last Modified: Fri, 20 Nov 2026 03:34:14 GMT  
		Size: 9.6 KB (9599 bytes)  
		MIME: application/vnd.in-toto+json
