## `clojure:temurin-26-bookworm-slim`

```console
$ docker pull clojure@sha256:95f943bf0f79977b01c2b36cb8647ead2a8ee6670b398a1bcc71718297cb6ea4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-26-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f70ee082629cf3d9b36833b60a50a8f69d7def07c115682dfa3edb4ce2ea0d75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189405931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52f2b2deca15ba731684f2571b882dcd5bea65d9763cd729251e062bbc0c7eb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:57:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:57:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:57:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:57:11 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:57:11 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:57:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:57:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e720c32a860de7ef5a5b59e678eb10b5211ce3a9bd5150cd9e49f85fb1fa7d34`  
		Last Modified: Thu, 02 Jul 2026 05:57:49 GMT  
		Size: 94.5 MB (94524293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407b5d353a05374d13ccd855d356a26e028665ee191794fcf917bec0ae86ae17`  
		Last Modified: Thu, 02 Jul 2026 05:57:49 GMT  
		Size: 66.6 MB (66642953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75bb5082ce0f8503f6b7b2e394fd920b1d4226735a0a80a42e7eee991532840a`  
		Last Modified: Thu, 02 Jul 2026 05:57:46 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af0070208a17ecb56f89e6c5cca759fb771fa68df780f51f52a7dccd7218af3`  
		Last Modified: Thu, 02 Jul 2026 05:57:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:24a2a28411b376c7667346f03e92a2bab9aa7815718db7c96574589be821955f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c445f1578eea071edc4fefbd23eb774828ad533e411745fab115a422f9a7acb3`

```dockerfile
```

-	Layers:
	-	`sha256:379cbdfe82f2a236be8e2c20ae6c8a85ada7b9c123d220d1de3e7f1ca78bfe16`  
		Last Modified: Thu, 02 Jul 2026 05:57:46 GMT  
		Size: 5.1 MB (5078890 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b802a6304a302ce9a964c58490afef310f6d6b347463df802d03db4bf6e4e927`  
		Last Modified: Thu, 02 Jul 2026 05:57:46 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:44d8d6f30dff3d01e3a25d69013716530059d1af52482fd21c752702e8fc4cc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188271224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c3121872551799d8c44a28aeb260bcd1ef912660669dc767c180a0b111c8c8f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:57:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:57:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:57:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:57:05 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:57:05 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:57:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:57:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:20 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a545b7d84acdaabfd04ef26b69e5d87c154c6dd7cd6da80fb9de93961f4bff`  
		Last Modified: Thu, 02 Jul 2026 05:57:42 GMT  
		Size: 93.5 MB (93504374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822e2a1ad33d4a970e0d7fb1dc02cb336c432452f6d481dc49377c7fef55ecf9`  
		Last Modified: Thu, 02 Jul 2026 05:57:41 GMT  
		Size: 66.6 MB (66643389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2965faf7dd1172ea3f9609c21b184d918d4f537b7d092b720f28e278f03abea1`  
		Last Modified: Thu, 02 Jul 2026 05:57:38 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9eaa03ea533398f86cef23eb804a898e8a84e734597c5207a112ff46b58996a`  
		Last Modified: Thu, 02 Jul 2026 05:57:38 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5fcab276cd9433acdeb741ae8c593836854d039dabcd779a297c2cf75dd35173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2153309cca6efd78a4cdffd414008efac0f37bf8e5e1c143e1e5f7cd46d0ed`

```dockerfile
```

-	Layers:
	-	`sha256:afe5b17006da74720f40275f89ff8588f6839818da3266e6e50817948c82b110`  
		Last Modified: Thu, 02 Jul 2026 05:57:38 GMT  
		Size: 5.1 MB (5084648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1711bdacf9b535671f4dc7e4e523110d0999748cc42b7376396aca11e03efa9`  
		Last Modified: Thu, 02 Jul 2026 05:57:38 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1452c52eea01d2b4d215790b54d89a5c0012a1db129ceae57cf2a41b3df6ae70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198461310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c883d7352e6437a656575e9507223f2ecdfc939d8ec6f2f34cc9f7403a582a0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:46:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:46:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:46:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:46:42 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:46:42 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:56:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:56:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:56:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:56:49 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:56:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138e1124eaafebbf5053cad956e5af6afebceb4bb90e53a7c84739e5789cfe7e`  
		Last Modified: Thu, 02 Jul 2026 07:50:04 GMT  
		Size: 93.9 MB (93902051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d5e8697735746f64d59c186ffac34ff7b509c02ffe4010fb89bf1011a4501f`  
		Last Modified: Thu, 02 Jul 2026 07:57:26 GMT  
		Size: 72.5 MB (72476239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f1e9b7c2582bb10d752b811be8a1d56bb5845192d0ae0fbcce972fef0cb656`  
		Last Modified: Thu, 02 Jul 2026 07:57:23 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44fcbbace53ad56755d0a407162ae085728c0a4eb0a70ab32a7853ba9b7c939`  
		Last Modified: Thu, 02 Jul 2026 07:57:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:83965bb15f3d774caa2c67ff910a05c9f014494809352e8af2be36cb35e729fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5084015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9d9302d079b79644b691ee1f79bff1ab865c994422baa7900f6becbadebc09e`

```dockerfile
```

-	Layers:
	-	`sha256:45ed73d9671e5e7e352c6dc0b08d05a4c584e82223bbe6d30a4509462aa0e95f`  
		Last Modified: Thu, 02 Jul 2026 07:57:23 GMT  
		Size: 5.1 MB (5067984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fca1e2b42c4469a55665f516896d2a642a95a87c82566d35e019261b3b03e7d`  
		Last Modified: Thu, 02 Jul 2026 07:57:23 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:1af434cf8210b2d5c9fcdf223591504b78e73f9ca350cbc3fb73d0dafccd7550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.9 MB (182883881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:110868398fdd75e18f97ab0159fa7cc5db74393037b8d9e5658482cc3b397d63`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:01:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:01:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:01:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:01:00 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:01:00 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:01:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 06:01:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 06:01:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 06:01:12 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 06:01:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67b0b74c66773eb36fb61482b90dc9fc0715740487f12c55cbe2be3205e944d8`  
		Last Modified: Thu, 02 Jul 2026 06:01:40 GMT  
		Size: 90.5 MB (90536926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0497d10757dee3da175b7e95310cd7387cb4dd5560d14905688bb25ca110af`  
		Last Modified: Thu, 02 Jul 2026 06:01:39 GMT  
		Size: 65.5 MB (65452328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596763e2c9a8782d1d214a43f31c559f6facc351e9582e5e8029476ce2dca2e5`  
		Last Modified: Thu, 02 Jul 2026 06:01:37 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c59cc33d9b5240db24b58ffd50a2fcfa6e0d62ab3f95498ea8f7b438a6807f`  
		Last Modified: Thu, 02 Jul 2026 06:01:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:aeb4548b6acad4466dda33ee9a43e0647f65fa21083e8460a2d51fe41498024e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5071380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c27ba0903ec503d0fba4885feba5b6241072784b335cd26312f78db44f534b5c`

```dockerfile
```

-	Layers:
	-	`sha256:68a68896f36a2e5a6cb2f119c82dee324e900fea0b0603eb0629dbabbeef5fdb`  
		Last Modified: Thu, 02 Jul 2026 06:01:37 GMT  
		Size: 5.1 MB (5055397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b33bab9a12b587b72aba3223726f465e775e8fd951a09fe3d54c56adb698f3e0`  
		Last Modified: Thu, 02 Jul 2026 06:01:37 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json
