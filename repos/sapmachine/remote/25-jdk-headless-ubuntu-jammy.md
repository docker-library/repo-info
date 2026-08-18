## `sapmachine:25-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:b76a226b33a56e265cb07214686accb30eabc2141f17ba031b8ece777c087177
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:f974ca35901066c0ba0010ee03771d8b2b7ea9930f1861bc3f9c23af6f96b3ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252452916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b80da5a24417b8efbd9118676fe23c9e43a99945e95d6d9d9d3cc51a10334018`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:20:54 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 01:20:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e0e925ca58008759732d72e253c16b3a51602d35c695a19a3212c6850f14e4`  
		Last Modified: Tue, 18 Aug 2026 01:21:16 GMT  
		Size: 222.7 MB (222715973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:36d984a2c8f2dcd9deb252a45f0940111d4b2f0c1aeec343a7ba46ccb0d23e31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45c335a1ce7497be7b058b45a9f63fd4fb54436c89e8b7536c9bb30899b35de0`

```dockerfile
```

-	Layers:
	-	`sha256:f9a700d8d486776779ff56939ac938ca2731bb83db2ddbd083715028d5075b70`  
		Last Modified: Tue, 18 Aug 2026 01:21:12 GMT  
		Size: 2.4 MB (2369580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a81c74aa5141e25ab47e5c49a3f3d2a51068663e5c75ed2bf3f91178777a9893`  
		Last Modified: Tue, 18 Aug 2026 01:21:12 GMT  
		Size: 9.6 KB (9585 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:d72367535b21e27054e1760b9b751263763fd356dd2b0fc2324d274c9d17d1c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.1 MB (248065168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388ae35994a6467861619436e1661f184a2d90bcb289cc7e01f2d4efbd8175c6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:20:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 01:20:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:843eb818d45f35a2d1b4c86d907409d276e9ec158267e3e306d6754f40958dbc`  
		Last Modified: Tue, 18 Aug 2026 01:20:53 GMT  
		Size: 220.4 MB (220444715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f8c7ca7033646bb61191707df42c57f7b5fd74dfa6e5af4cba61a6111bb9a43d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2378986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e62d4427c626ecd4e2d2ffb1be701a38a2bdb95e3f96746ec9cd25ce637dd1`

```dockerfile
```

-	Layers:
	-	`sha256:c951062d2e2267d0dc54f928bc7df33bb2d143e5638291e2a70024394b723903`  
		Last Modified: Tue, 18 Aug 2026 01:20:49 GMT  
		Size: 2.4 MB (2369273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ead8ee128610079ae3bb2c36b450fed63c65beb1582a92c1791af2e52350f29`  
		Last Modified: Tue, 18 Aug 2026 01:20:49 GMT  
		Size: 9.7 KB (9713 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:b774e0494abbbd7b5a96ed72f404bc6367bd69f95d0ce00536475da2a8de2022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255355345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db97da2707448b80a9cd7c6fa379c968157054a383bacb5ab8db18977ebc38f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:35:54 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:35:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 01:35:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d350b868f52345b2ffae0cb3f215ebd2f72a53b74b7098d0d43e48c3a430cd8d`  
		Last Modified: Tue, 18 Aug 2026 01:36:45 GMT  
		Size: 220.7 MB (220717200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cea50be26ce7756003f02596e0fedcb26358838313ce54ed8d5c1d1b3f755e5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59dfc4e7a0ea8d7457a12b0c76e29efb7ab0d7910a93c48902721f53389e68fe`

```dockerfile
```

-	Layers:
	-	`sha256:12340236dc528ede10065be7dacb8fe761aef20d91f2890a07a2a8aa1587af19`  
		Last Modified: Tue, 18 Aug 2026 01:36:40 GMT  
		Size: 2.4 MB (2366470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fcb6e018227e0bdc46ae25e12a6953296de06ccd1f50322a493906c0ab68226`  
		Last Modified: Tue, 18 Aug 2026 01:36:40 GMT  
		Size: 9.6 KB (9641 bytes)  
		MIME: application/vnd.in-toto+json
