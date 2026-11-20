## `clojure:temurin-11-bookworm`

```console
$ docker pull clojure@sha256:adc0ccd596ffc072f73236de1076b34abfb28a8015674d420bc5066302ce1f11
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:c3964e83ddf963230b49305097cbe1641fa99de9b6c57cced1cb00b9aa1217b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272451994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7851515b5300d80843b375c72fdec80ff2be3982520babd6558593c69c1824e4`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:07:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:07:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:07:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:07:06 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:07:06 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:20 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39bf66634d231e4ae460a2464f74985301e1ce43055c0e00a211f206af15a958`  
		Last Modified: Thu, 19 Nov 2026 22:07:41 GMT  
		Size: 145.9 MB (145923105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca43e451c5fa77f8487e374bf9cf5a477e47a542674ba31be1108eb318d4302`  
		Last Modified: Thu, 19 Nov 2026 22:07:40 GMT  
		Size: 78.0 MB (78001760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dab8374d3c08fc80206d9738fde51794bde17bd1da7fecf25c106754d8052b8`  
		Last Modified: Thu, 19 Nov 2026 22:07:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8b06ce4ddb2e8190d8764f8dae28f2cd4f612afb8e9259c27ae8c54fcbad4150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7412516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c4b4a337407e2861f5e5989c07871cf857f8df7cc0c8ec02caf607c2eeb695b`

```dockerfile
```

-	Layers:
	-	`sha256:a81d71984695f3dcf7367a572a38bc7426f07675b83b77a808e3baa9e0e634ba`  
		Last Modified: Thu, 19 Nov 2026 22:07:37 GMT  
		Size: 7.4 MB (7398153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3578b81a03324538345bad9ab296bb488c12b660959f0d981aa77ee03c7b9503`  
		Last Modified: Thu, 19 Nov 2026 22:07:37 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dbf5fd0ef87e537294cdc73cd59aef69ec2b133a202ea9cd73a183af2ddc1678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (269031738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67ff46297db1075e4628a305293271cedf96a7bfb61dc111f71a2278593a7797`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:05:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:05:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:05:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:05:45 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:05:45 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:06:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:06:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:06:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a45d0d2e44fcec9ea2f82581ea406d0689082a7b8f7d6dac61324c5390b392d`  
		Last Modified: Thu, 19 Nov 2026 22:06:25 GMT  
		Size: 142.6 MB (142621061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7ec9b880fcf6431e39629b374c735616be8e4f0cd05c364df0035e7bb16000`  
		Last Modified: Thu, 19 Nov 2026 22:06:23 GMT  
		Size: 78.0 MB (77997576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87ef92cb42835a469cdb9eafeda6680b0b5179c7bd43d4e35fa661f2c88521a`  
		Last Modified: Thu, 19 Nov 2026 22:06:19 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:954c8ac0789e0493d51f5863017ae52f1ee27a1b769a5c19ec2cc9caf4435933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38abe6b77d3da0abf746c546fe61cb71a944f94e69381e5de0326438921eae8c`

```dockerfile
```

-	Layers:
	-	`sha256:ceb56efca398411ab71bf1716637535586f9346e44b014054edfc02c2b2869f4`  
		Last Modified: Thu, 19 Nov 2026 22:06:20 GMT  
		Size: 7.4 MB (7404534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:add8b1c06a549c1254f0ee931bc95284d0b74c257b297a78fc95be0db22ac936`  
		Last Modified: Thu, 19 Nov 2026 22:06:19 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; ppc64le

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

### `clojure:temurin-11-bookworm` - unknown; unknown

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
