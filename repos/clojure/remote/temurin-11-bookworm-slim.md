## `clojure:temurin-11-bookworm-slim`

```console
$ docker pull clojure@sha256:8deaac3d3751b958e482154435b7df10715e0f770688a49c9d217af97a47de1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:57146ede996a0cbaf17873e05419d2e39b2f624a6404814abdd99bf441e01ed2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240678737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba32eeb8793ea5a255b95cde0d36b78f813159d4ad5aedddc39772ea7555c9f`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:36:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:36:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:36:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:36:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:36:36 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:36:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:36:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:36:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c1832f604cb4de138c5302c5035f8f17ee9a8864f7353e7edbfa2cff7f5914`  
		Last Modified: Tue, 10 Nov 2026 00:37:09 GMT  
		Size: 145.9 MB (145921630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35688e86f965674fa4fe977640b772b36f66f540b60fef4d0c616aa80296c807`  
		Last Modified: Tue, 10 Nov 2026 00:37:08 GMT  
		Size: 66.5 MB (66508479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4ed17efe250d29986b5e98482d3e9b55b3807163975e8de3321684971f178e`  
		Last Modified: Tue, 10 Nov 2026 00:37:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7968690a66508e313680090d11cfc7be5e796176117eaa588174cf7869a45c46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5152044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55316cb35b89b006a92865425e8a3bc4ae8c82be084f0499bd386622faa957e5`

```dockerfile
```

-	Layers:
	-	`sha256:5b65a59d6eacfec88613ef70bccc5a8e2526cb29a5c547485ee4f7376b5fae73`  
		Last Modified: Tue, 10 Nov 2026 00:37:06 GMT  
		Size: 5.1 MB (5137623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b67a42cc8863e61ddea2554fe2c9f722d91eef2fd8104a59a015c1fec587a61`  
		Last Modified: Tue, 10 Nov 2026 00:37:05 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:770204c2d75fabd9ef7d916a64320676b7609ec0fe8722a712bf116d53bfed74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237266274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6783b652ca534c62b78b7fdb621ef8036e4ea55dbde1bed33771b78a6dbf4e25`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:35:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:35:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:35:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:35:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:35:52 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:36:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:36:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:36:06 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ade812a7740ad87c12288370453f193daa2ba994cc6a1c07e22b9ea05d578aa`  
		Last Modified: Tue, 10 Nov 2026 00:36:28 GMT  
		Size: 142.6 MB (142620966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfc02936c8ec39b6ed06c77f6d9647b5dfea7776cf80bf68e8f901b4e7be2fa`  
		Last Modified: Tue, 10 Nov 2026 00:36:27 GMT  
		Size: 66.5 MB (66500303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe94f312f78c74e321603e48820f764cbd97b6d3785312b5297da0cab2bf9884`  
		Last Modified: Tue, 10 Nov 2026 00:36:24 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6ef999b98bab9ea8df5d87dfd319c94c4dda4502197d9f5f34ee6a4568e3b9eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5158541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acd2fb5997b3dd159a143b5a268731788a1fba905e9a2b00997cb70e5d3ba3d9`

```dockerfile
```

-	Layers:
	-	`sha256:b535f3ab36ef4aeac48cc9de31389b4c6e6260b033a02c53f84c23f1b8798e96`  
		Last Modified: Tue, 10 Nov 2026 00:36:24 GMT  
		Size: 5.1 MB (5144002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50874b8f84361d92d302204e99434c0f97054cde19d5c7104e5705ded48e60c0`  
		Last Modified: Tue, 10 Nov 2026 00:36:24 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:760be06d22e4082fc9aefef73bfe55776433204894a0a1cfb1cd7655a755c2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236700460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:158b73cdc4659a61b8ce4574028c7ed0a17c25e2d017146e45b8d485dc60f8ec`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 01:51:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 01:51:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 01:51:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 01:51:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 01:51:38 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 02:20:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 02:20:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:20:22 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99480d32360f3e8371c7b109fa06ad2a0c77407781fa839292f976381012efb`  
		Last Modified: Tue, 10 Nov 2026 01:56:09 GMT  
		Size: 132.3 MB (132272201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e463f85c5f5db24b66213ceaeae3e3fa43c0e1f38399977d284d6130037f5d`  
		Last Modified: Tue, 10 Nov 2026 02:20:58 GMT  
		Size: 72.3 MB (72334052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeecf822263ae7f969ff0f367192c0630de67d7084735b4b58d05af0d282e4e1`  
		Last Modified: Tue, 10 Nov 2026 02:20:56 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2901e99d7a9484e64f56549a356fd846b2dcd085bf556a213331f0d3077acbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5155389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd24e36ce5097ecb82090f7b2732935dabc76441e9e68ade75714d93a0bc6ef5`

```dockerfile
```

-	Layers:
	-	`sha256:e4d3fbff7d7db7a1d38cf6728f94c6e3f3ae0e93a26f8b6ae2689c55050f9d42`  
		Last Modified: Tue, 10 Nov 2026 02:20:56 GMT  
		Size: 5.1 MB (5140920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afa4a497deda6b419b65a011722a6d9115e9fb265c36acc7110944e182bab630`  
		Last Modified: Tue, 10 Nov 2026 02:20:55 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json
