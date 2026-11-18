## `sapmachine:27-jdk-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:b49c1f93a2e4418a801e954951eb053d0afcc00c088fb7817b80d3310df5b0ee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jdk-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:61b367528fa52c40dc4a3c49fb9cf313c2665867d17d5b10efa561012f6b5c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167980116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc8b2ab45bd7a31d1513a503267b0e5c9cc6df2c459ea0567d58b98fce399c12`
-	Default Command: `["jshell"]`

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
# Wed, 18 Nov 2026 16:37:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:37:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 18 Nov 2026 16:37:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d611008813639396bfe8d9847065221a81d79ccf3e1f93a60aef0cc26e75c8`  
		Last Modified: Wed, 18 Nov 2026 16:37:36 GMT  
		Size: 138.2 MB (138186893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a2c9d98cd056cf9afc670a74d49fdd16d429b3aa642cb2a32b0035861e3a72d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1635ceb76fef97c9287d3cb84d7269c0f6d19cbf676935b105374a5d8a283e`

```dockerfile
```

-	Layers:
	-	`sha256:56c83d65080a767cef6b6dd7b3ba7ad9f2415c93af7c90c1cae238b602751c18`  
		Last Modified: Wed, 18 Nov 2026 16:37:33 GMT  
		Size: 2.3 MB (2301283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b70d21ca3f7dcdbe4fad41cb11d8c59829deaf60082f312335def1c5d91c6fe0`  
		Last Modified: Wed, 18 Nov 2026 16:37:33 GMT  
		Size: 12.3 KB (12315 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c53bd1b17160226a11b6748171577d30c20a021d4ced3aa2a821d3abff2fbaa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166231292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9e31c1d57ec63ae5a9fddf3c5dc5a6620791779560f3fb8bbe0699d564bb6d1`
-	Default Command: `["jshell"]`

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
# Wed, 18 Nov 2026 16:37:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:37:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 18 Nov 2026 16:37:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec47e31a6ecb7b228ed5dd344f6aa03fea92072979902483b367ed15fa40fccc`  
		Last Modified: Wed, 18 Nov 2026 16:37:22 GMT  
		Size: 137.3 MB (137266034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3d7dfabce66a0f199cc75d1e819a9fb05eca2f9e48c6c91a224b1cbe30aca591
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2314350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:704d9ec9f38e2ddd4aaf789ba20acde382a04d3b5a221fa84afa9e48f1ad5535`

```dockerfile
```

-	Layers:
	-	`sha256:05f9f6c300b32089ab0a17d68642b259c2f25b2e2e46825e22b8cf4b1445435c`  
		Last Modified: Wed, 18 Nov 2026 16:37:19 GMT  
		Size: 2.3 MB (2301835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b311d9d2d3f6c798144bf3fb5358e06ea3f2de86a9661ca208ea06330a375339`  
		Last Modified: Wed, 18 Nov 2026 16:37:19 GMT  
		Size: 12.5 KB (12515 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d24a7614cea7c1ae517cdcdde194fc6f3c6c5c40e33cf54a16015742fc8bf651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171638290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45de0b13ba66db62e69689a42836b61cc901468dbec29adbefe6adf61de7e4e1`
-	Default Command: `["jshell"]`

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
# Wed, 18 Nov 2026 16:52:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:52:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 18 Nov 2026 16:52:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517e57986259727015ba64d84fd6578c5061293929f8f3e7908bd848e474c18f`  
		Last Modified: Wed, 18 Nov 2026 16:53:30 GMT  
		Size: 137.2 MB (137231779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:161e8c31321bf27494aaa0bc31d5f97056e1dce924282f7f7a0507da7fecd38e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a4e1ed376bfe78766a09dbe66d6aa5a23e22d08799e94ff75371185d4f650b`

```dockerfile
```

-	Layers:
	-	`sha256:e9efdfb838b3569f5d9d25e839a3dd8bac0f5ec6edb1ad63de039f38de1f2488`  
		Last Modified: Wed, 18 Nov 2026 16:53:26 GMT  
		Size: 2.3 MB (2300094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28587cc3f39a71f58a4305f8d93f4693a8994d704ff0ad761ff801a7fc8b6806`  
		Last Modified: Wed, 18 Nov 2026 16:53:26 GMT  
		Size: 12.4 KB (12407 bytes)  
		MIME: application/vnd.in-toto+json
