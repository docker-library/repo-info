## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:cf70e9797c1fbc7875ec497920fa323f4cb43c5ae6038cef30cf3c45a74c400e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3af8e2d97a2ac8d127c2498d8e67209e7ec90a1af7a6740614698c0f8ad45c3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244699717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa9f106fe24f423d9f6b14c456708abf0df24e632ae8088a455c2969237c3c5`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:11:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:11:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:11:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:11:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:11:46 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:12:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:12:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:12:01 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb249c4823f68e675035141740e3039a424c9ee66a1643becc26fd8f6d47a89d`  
		Last Modified: Tue, 06 Oct 2026 02:12:22 GMT  
		Size: 145.9 MB (145864176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d5e9a353b1319aeb710b4ea614f79992e8819140adad0d371f4d83b99825308`  
		Last Modified: Tue, 06 Oct 2026 02:12:20 GMT  
		Size: 69.0 MB (68991546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d134e2fce1f6a137b96b2e402a2ff5ff379218287ac60132a0003287aef18b`  
		Last Modified: Tue, 06 Oct 2026 02:12:17 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e15527a5ecdf17e645676d03151b29f1ef2c449a6bef64fff990159067f5610f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38e2e6a7f86d66568564c80deac508617ea0b2041cdf276f940aa24c4369d50e`

```dockerfile
```

-	Layers:
	-	`sha256:fbe1fbaf460342571f67b02b18004544b0fa9f64dc1bc613d191a13118251b2f`  
		Last Modified: Tue, 06 Oct 2026 02:12:17 GMT  
		Size: 5.3 MB (5282830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:204c28eaf97d865328eb0ea17cda781fb6d5e9fa9ddbb9891549fd7a146783f1`  
		Last Modified: Tue, 06 Oct 2026 02:12:17 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:33ab5e5b25dd6c1ac94a7bd5fad6542190c7bc7687d3aa4f4983521ea6e674bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241585986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6363442ec56d1c3b2b61ac0c8e8f93915da32f2ca1c4e4bcc4329cb726c6b4f`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:17:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:17:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:17:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:17:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:17:53 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:18:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:18:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:18:09 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250a71d2f35207dfa933ab95ce4225bdabbbd5065fa3fdcc334524a25f8a98ac`  
		Last Modified: Tue, 06 Oct 2026 02:18:31 GMT  
		Size: 142.6 MB (142576530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3aa16553923bad4d93cfe37d0268464ffce39457dc1fa515f941f7591df295`  
		Last Modified: Tue, 06 Oct 2026 02:18:30 GMT  
		Size: 68.8 MB (68808533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba56586704fccd6495e6f585450b9f5d39399e0f29d59ca1af63ee1d06884f2`  
		Last Modified: Tue, 06 Oct 2026 02:18:27 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6f0e9152a7422abc795fe3251e4659d366a6b01dd70aa86cf4d71e68c9e8df89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5303724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adcf64aa8828838694e2a561e18c6635d2623e1c0802b99d3e8f600838c7339c`

```dockerfile
```

-	Layers:
	-	`sha256:928af25348377935a7369f89ab15517f5a28d97d7d35a4fe4add324acd0fd92e`  
		Last Modified: Tue, 06 Oct 2026 02:18:27 GMT  
		Size: 5.3 MB (5289209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34c4706bb7b981bc3dc81d1e9fabede25b9a9adb08ad06e190eb5ab5d5739728`  
		Last Modified: Tue, 06 Oct 2026 02:18:27 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a75646cff149c6d4f2862d49d24d43c90b08845797cf051f73965b4a022382c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241158758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae1174cac8fb7a56cc2e867ea1ada8999840e90586bd1780e1a0d3b791897e7b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:52:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:52:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:52:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:52:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 09:52:13 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:00:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:00:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:00:31 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d600f73d0d239be1830c72a0a84ab8a24820da0b5940b7c62a7296bcc885045e`  
		Last Modified: Tue, 06 Oct 2026 09:57:01 GMT  
		Size: 133.1 MB (133094729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b9100a5262ccd65c7aa55bf9ed8ffe65d333c8edf5f9626b8d7f6221c45a1b`  
		Last Modified: Tue, 06 Oct 2026 10:01:13 GMT  
		Size: 74.4 MB (74411784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94775f1fce8b96405a5ae7c3f6b60fcb7b70194994c6901206f955e94e6cfa2c`  
		Last Modified: Tue, 06 Oct 2026 10:01:11 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d7b1df836d1be8fa64a00ac8f3bc73dc3cfb6c85dad9c37b8ad966e52ee526e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5301030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb4fe04ca548cab8c33d59fa137f0353f68d24e8ab290885240ae1a8bf599c8`

```dockerfile
```

-	Layers:
	-	`sha256:fd0b12655adc047e5e359c04319bd1941fc37cb68cee08f6cb02d34a3ef5d3df`  
		Last Modified: Tue, 06 Oct 2026 10:01:11 GMT  
		Size: 5.3 MB (5286586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03ffa3761cb404c158d01bcbdbaee0b14af47e69f9e4d6446a06b9d8925aa1fc`  
		Last Modified: Tue, 06 Oct 2026 10:01:11 GMT  
		Size: 14.4 KB (14444 bytes)  
		MIME: application/vnd.in-toto+json
