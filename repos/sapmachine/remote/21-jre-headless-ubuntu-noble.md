## `sapmachine:21-jre-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:bf3d96f09f5346108e0042574c85adca2fc8b1c19fd951259d01626d3cd42cc9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:4e706a6fe6fb8ffd0b9bc8b956ac5642a5ae8dabc924de447d589067fa7a5690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.2 MB (92205358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:704cd397a9abf804cd583865f1dd269d3e5818fc649c1e216f534c6b06d567c0`
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
# Wed, 18 Nov 2026 16:41:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:41:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 18 Nov 2026 16:41:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ef75f69e80f4c12deacbc0949ac3aefa6f77ec899a85301c990dc3b84a3d63`  
		Last Modified: Wed, 18 Nov 2026 16:42:04 GMT  
		Size: 62.4 MB (62412135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:38f38a0cc1b4ebc854486e958bf9f81e02b70633564aadbd5f3bd16efcf59abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2286965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:277d7a22f46b5f63a8c10f46fff5dff146ab8b25c7276fdce24f38c6c07768fd`

```dockerfile
```

-	Layers:
	-	`sha256:2f09ba0e9ea5d3d131d8672418078fc1d151b5830fe9f6d080617b5db9c54533`  
		Last Modified: Wed, 18 Nov 2026 16:42:02 GMT  
		Size: 2.3 MB (2275980 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2365476081cbb79cef63a9ce80f5b333d1596a669dfcc2808e20e3e561ad89f`  
		Last Modified: Wed, 18 Nov 2026 16:42:02 GMT  
		Size: 11.0 KB (10985 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:9c403d602948748e4ab9e5f99df1232a2f9c548ce7e59268db6dac8c148432ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90552180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd56821e438b2730b8d2c2878ee0988192c0874af5c3bf23ea223d79552c40b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:40:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:40:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 18 Nov 2026 16:40:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576cfebe85c96c2fa67f8f2a5837ec11d45e8593ffb12e3fa56d5e85f80a9919`  
		Last Modified: Wed, 18 Nov 2026 16:40:23 GMT  
		Size: 61.6 MB (61586922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:23988e6c6604e42ef074de1f3c6dd342b27e917edc9926782d6239a5cdb1d146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2287624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb64f97c28882e8decd2886e00c6958d2cc5a0299a7070b65757dc33b9920aed`

```dockerfile
```

-	Layers:
	-	`sha256:c500cc12817197548d6cbffa7af1d06e6f2f43480ee1a3543682fa371658bd81`  
		Last Modified: Wed, 18 Nov 2026 16:40:21 GMT  
		Size: 2.3 MB (2276487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10a50ce3734d3f08a54e39f440b4386b76a92d7c47803b891ff16600a469b17a`  
		Last Modified: Wed, 18 Nov 2026 16:40:21 GMT  
		Size: 11.1 KB (11137 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d828739645a7000dd69c440b79893dd7e953fc41cbc72b1e49b85eb975dfa8c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 MB (96375569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930f81043709bf53da61fada3cd4a2371b968b2703df64f124d7ffc229756ae0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 17:05:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 17:05:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 18 Nov 2026 17:05:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a0eff1fdd2f2eca28dc80cc27eeabe62881e954602165f24b7a7d10a116795b`  
		Last Modified: Wed, 18 Nov 2026 17:06:11 GMT  
		Size: 62.0 MB (61969058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:db09ed1fc219b3f1295516f0415733b9d78739142d00a92b3324187b6988ac03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2286450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c6be3025fd1ffc197b6e6f617da0c836ab206467904b2d006d937428cde35d`

```dockerfile
```

-	Layers:
	-	`sha256:ccfd07f962430deb633d53a4e3da7e1353613d21bf525e4a019094e641ee2ec2`  
		Last Modified: Wed, 18 Nov 2026 17:06:09 GMT  
		Size: 2.3 MB (2275397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a6deea25be2fbaa8726f4ecf6ce6b27946bca06287286ea7a21e8ecd04ba9f0`  
		Last Modified: Wed, 18 Nov 2026 17:06:09 GMT  
		Size: 11.1 KB (11053 bytes)  
		MIME: application/vnd.in-toto+json
