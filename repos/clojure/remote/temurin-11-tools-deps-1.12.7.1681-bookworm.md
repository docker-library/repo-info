## `clojure:temurin-11-tools-deps-1.12.7.1681-bookworm`

```console
$ docker pull clojure@sha256:c1e242ead7c32718ad9b041fdb43aede3b2885c3d0f16ff87d6e686f2c04b3c6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.7.1681-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:362422277079de5eccfc74d5081bf1f35fb327f441a4324e014f43d4343240b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272451654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d936db13935ff43476922a569f27bfdb9572b21ab6a80bb61729d0ce16f75edd`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:09:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:09:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:09:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:09:37 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:09:37 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:09:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:09:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:09:51 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f0a232d97a15158229853f92a49d8d530e832e6b8b83012ac945577768d2e3`  
		Last Modified: Tue, 24 Nov 2026 05:10:12 GMT  
		Size: 145.9 MB (145923107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0acd24b2d7f364d8b368fe3b01343b4758b52782a92170e13f044cb183619e`  
		Last Modified: Tue, 24 Nov 2026 05:10:11 GMT  
		Size: 78.0 MB (78001528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d55e89cda0923979c1acc488353fb22a006907fbb42ab10164a41c673d6411f9`  
		Last Modified: Tue, 24 Nov 2026 05:10:08 GMT  
		Size: 608.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:38af4a8afa707e27d7bdcecc3b2cc03436f60cb62980925e0127e5427c963239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7412516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c33755d3ca762aa8c4aa790d829f5bc6f639babd30ddee6ba8d8f6a453a3b2ae`

```dockerfile
```

-	Layers:
	-	`sha256:ce16c5f83384031b1e8810113b754114e8b611eb4b14fb011e3b7dc7b599c3c1`  
		Last Modified: Tue, 24 Nov 2026 05:10:08 GMT  
		Size: 7.4 MB (7398153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b27b3d909c96e40cf357c128ef295a161c1e0287a98091e02eb9a35bc4d2f1c`  
		Last Modified: Tue, 24 Nov 2026 05:10:08 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.7.1681-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e70009b555c4df49f789b7e172a0c197dfcac1f5a51eb13a86579200c794e6ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (269032176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7feaf5752b0c055d05f1a1419c7fe4c5ae1f4cbabfb3b48b41b13e0e4e84ff`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:17:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:17:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:17:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:17:26 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:17:26 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:17:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:17:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:17:41 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bce3e7989c7076714b33fc675a98748147389c5b27abc6b3b89decf187123a1`  
		Last Modified: Tue, 24 Nov 2026 05:18:06 GMT  
		Size: 142.6 MB (142621118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cddca5cb87dc235f14be6fca6f8f4904ca02fe4c77a324f8e4b3b624d522f60`  
		Last Modified: Tue, 24 Nov 2026 05:18:05 GMT  
		Size: 78.0 MB (77998155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2596b045e9ad00835330a19682afd8dc7bd4e2a245fad3bb7b517df08bddb550`  
		Last Modified: Tue, 24 Nov 2026 05:18:01 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ae9cc1c43c924c447018ec5261f39ea01d333caead742f2ec5c6a838774f8b00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed7b2adab4a40848d567089fbd95d96e0f6af39f6ed177e0447edb43aa2ce909`

```dockerfile
```

-	Layers:
	-	`sha256:5d94499006a5baa99ea567910fcaf691c2cbf04dbfefd31d60f617bd14bffb4c`  
		Last Modified: Tue, 24 Nov 2026 05:18:01 GMT  
		Size: 7.4 MB (7404534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8d0971fc0b06b2134067bbd34d2ec96745e126c34a48d822f795763bafb7b20`  
		Last Modified: Tue, 24 Nov 2026 05:18:01 GMT  
		Size: 14.5 KB (14480 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.7.1681-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:4ca2eb2fe1e433caf063a9e840b33fb39775dcff83934aff66e60ce80f9ae51c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.5 MB (268465402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757bfd79e3d1368682a2112488231fe9ffe120071b79ffe72e1b8f51881356b1`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 01:31:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 01:31:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 01:31:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 01:31:03 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 01:31:06 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 01:31:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 01:31:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 01:31:44 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1c890867a74789d617645f79631eec1d26d6fc30fe7336a0281391a23b0868`  
		Last Modified: Fri, 20 Nov 2026 01:32:37 GMT  
		Size: 132.3 MB (132272182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db4e82fc956e1162b6b2edcfac940d660eeb85135dbd69e218affc12e1ab7760`  
		Last Modified: Fri, 20 Nov 2026 01:32:36 GMT  
		Size: 83.8 MB (83823955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a328881d4c9c2a0fcf68c79b66b9a7768563ae2e5e0630d48e9456dbba55c328`  
		Last Modified: Fri, 20 Nov 2026 01:32:32 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:cae17cbe802c7817b1cbda388b00a5b5d8bff24c46df4a76b2556739ea5fc71f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7415915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66043d7de084cdc0dcdc4e12b8c18d21d23a284eb19328ae55030a6f442f950f`

```dockerfile
```

-	Layers:
	-	`sha256:08a7fbcb6037447d4a0bcf8e9c4b67be5f2923b354ac5bffc1a2bd7d613b2f47`  
		Last Modified: Fri, 20 Nov 2026 01:32:33 GMT  
		Size: 7.4 MB (7401504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad80008887a120f74710645ce7f9a46740f4cdd57ca9a31853b036ef3c14dc34`  
		Last Modified: Fri, 20 Nov 2026 01:32:32 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json
