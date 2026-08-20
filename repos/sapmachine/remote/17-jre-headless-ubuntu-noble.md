## `sapmachine:17-jre-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:ba8b560d81f8a8ad7dc5f8f7443555fa86bc7a92608f948d19a6f8fae6cfc839
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jre-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:b52c387e2bcbe481b45ec905c248dad1c5010459722c88deac27911854cceaab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.2 MB (86169176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a979182ae0d6f3cd102608e77eba3d2c1575f2717733131bd9cb85b837f5b55a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:07:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:07:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 20 Aug 2026 18:07:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:881bf1fb62b2640f99c52dd08e165b5cdda8eb43df8546d63dee432669969f61`  
		Last Modified: Thu, 20 Aug 2026 18:08:04 GMT  
		Size: 56.4 MB (56416369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b0f2c4a3fc964797f053cf35b0e84c4f1fd0f8820f47a84c1bc6e1cda72ed0ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2284665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2ab87ff91be983d867ad5fdd6db294eb4afd57f299e4d8e95e37e46d2d52dd4`

```dockerfile
```

-	Layers:
	-	`sha256:b97d6b96cd4848dbfccd87658d0da541746e45c9c359c6a761e8fc92b72e9251`  
		Last Modified: Thu, 20 Aug 2026 18:08:02 GMT  
		Size: 2.3 MB (2273680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a9c270f0cb9fdd5b27862b064d1249287f8244ca9e240d1a846b9475bed01f2`  
		Last Modified: Thu, 20 Aug 2026 18:08:02 GMT  
		Size: 11.0 KB (10985 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:b1e3ee4a55f8aeded2f0c182ccc7e66f5059267c81d7c39f27eb22002d8f1de0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84775774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b223fbb97d6109efd5dbebe80001ea7b51aa2b867a7a79ae0363bd3b5e3a5492`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:05:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:05:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 20 Aug 2026 18:05:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6649b6c4cad4261088dab4480f8c8d17fdf4be1a25352fb0012c63e836bdcb85`  
		Last Modified: Thu, 20 Aug 2026 18:05:21 GMT  
		Size: 55.9 MB (55888539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:48db4d25ac995d0b6404c714525d9a2e9707913c29107cdbeecd9927f4e5c8a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1460aeb3677cb07cc6efa14072aeaa01f7ac60c8286730400985d24ea7e74f5`

```dockerfile
```

-	Layers:
	-	`sha256:4a4dee00cc611d6162ebdf1b681e30c96eb0f14e1e7a15d409fa65c0be526e6f`  
		Last Modified: Thu, 20 Aug 2026 18:05:20 GMT  
		Size: 2.3 MB (2274187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a2b874aca3bc62ad74bcd243d4ce0d4856aef9f6cefef327c06399634ecd5ff`  
		Last Modified: Thu, 20 Aug 2026 18:05:20 GMT  
		Size: 11.1 KB (11137 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:317bae7edbc26a136667fb479081832b13f313f3b613730206824e2ecc3f55be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.0 MB (89965138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c155fa0ee993cead2763a05d8029b6af0172bcec700ab143351e7f539bff475`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:17:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:17:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 20 Aug 2026 18:17:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:393560b57ba1e37a16021c4dd6fd26a52453919ff378cf6b26dc4daa258cf40e`  
		Last Modified: Thu, 20 Aug 2026 18:17:37 GMT  
		Size: 55.7 MB (55653943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:15f8bd7a86be49aef22f4b5e855dee891b6d64fe75fc1313e3e60b232869e1f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2284150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dc1d94409e86dd001f1e15084fc7e1f633e76d482284cca220a4c91fc257eb`

```dockerfile
```

-	Layers:
	-	`sha256:69a264ab6388d90e3c8e51648bdce1dff077e0f8e82b10ec0e7ede8821e88d3d`  
		Last Modified: Thu, 20 Aug 2026 18:17:36 GMT  
		Size: 2.3 MB (2273097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b8dd91b91b74f73e8d42868e268e6d9621d5f4312d6634368a5a826c7a92481`  
		Last Modified: Thu, 20 Aug 2026 18:17:35 GMT  
		Size: 11.1 KB (11053 bytes)  
		MIME: application/vnd.in-toto+json
