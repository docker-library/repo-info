## `clojure:temurin-26-bookworm`

```console
$ docker pull clojure@sha256:1cb11f03a444c6c21d4a83797bddd6999b7953357e828ed9e5e2484513e19c96
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

### `clojure:temurin-26-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:2a65e8b4c1d524ce14eaa5824d3d882ce00a049a79f7ca8b5007d14a3b144023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221167257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f50d7ecb13de331ef97fa41a592b859f9c918e1b2390994375a1d37beee3409a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:57:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:57:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:57:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:57:45 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:57:45 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:57:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:57:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:57:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:57:58 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:57:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8948098d795a13fab6e3e46fd4f83cd9a6b0a320952021dc42c728bbca6a419`  
		Last Modified: Wed, 29 Jul 2026 17:58:19 GMT  
		Size: 94.5 MB (94524321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328dbdfaf149a17dbd9022eb85da0d80f47899683769711b21513242279a0d0d`  
		Last Modified: Wed, 29 Jul 2026 17:58:18 GMT  
		Size: 78.1 MB (78144491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa76de4ea9ff1d46e9bdefe46dbf3c6365a720e730c2dae0bf99b7db8acf7dd`  
		Last Modified: Wed, 29 Jul 2026 17:58:15 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6195d84f06ac1cc3cf86fad3556c1b53b316985dcb94d27e1e8c6833b215e55d`  
		Last Modified: Wed, 29 Jul 2026 17:58:15 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:74b72fbc67c8213f34bbd05839cb8905317841e08a9b9a5445c43f8536ed40af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7358354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b341b4f6808f92e10fbfc2d33dd34da3d16b676bfd7f67c819ea0ad812f0252`

```dockerfile
```

-	Layers:
	-	`sha256:cce520b8baefce3aea0bc2327115e5d341af9fa0d0de663e128f8f2641eba1da`  
		Last Modified: Wed, 29 Jul 2026 17:58:15 GMT  
		Size: 7.3 MB (7341745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd49108b63e0b987bdb65c06fdcd4f0304542c326185ed965e0901f6235a6903`  
		Last Modified: Wed, 29 Jul 2026 17:58:15 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9b31328c94991a2a78e60bde7fb1541995a7ba6fe6d20b52c91135bdf9f125c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (220018071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad52d0abfe1f80b22d783b5ef7a4e002e4ab235ce27d0820f9fae21e0708372`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:06:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:06:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:06:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:06:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:06:35 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:06:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:06:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:06:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:06:51 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:06:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce26d3be435e349bfa74e09861c70e843f10b4843610e7aeca7a0d12332f47a6`  
		Last Modified: Wed, 29 Jul 2026 18:07:11 GMT  
		Size: 93.5 MB (93504310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adabde713923c813ceb19941a167366852f3f552b86a735ad608cb770bcf8dd5`  
		Last Modified: Wed, 29 Jul 2026 18:07:13 GMT  
		Size: 78.1 MB (78129028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70b0217ed174bff094852f727048d61803b82a92836fdaa9d8d6fa587a33f549`  
		Last Modified: Wed, 29 Jul 2026 18:07:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e3ecdadafa6da28fe64c75250a6d4c31252518f0cf4f1b64e3cf9f836d1da2`  
		Last Modified: Wed, 29 Jul 2026 18:07:10 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:df9d3fea7ab9947e7261ec7021bbe7f0828b1828d2856764b5be2753948f5536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7364279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117c67e179e0f639595e4ff894df3eff68d1c8797c2007683b254b69f09ddcf2`

```dockerfile
```

-	Layers:
	-	`sha256:8441668261a02df2518b2d27579a064dad43f2169fb2194bc34578125fa2443c`  
		Last Modified: Wed, 29 Jul 2026 18:07:11 GMT  
		Size: 7.3 MB (7347529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d47ae967e9945190cd4a57300ba1cb4db10be5ff0e01890de20ce59e1ce4442`  
		Last Modified: Wed, 29 Jul 2026 18:07:10 GMT  
		Size: 16.8 KB (16750 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:3252a4bb0271e32b6f82bd2e42c39642d33182c74fb93b6bd74f3759b5d04587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230218500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac44a211703f97d5710888ca47899abd5543a944c870761874c708be907faa52`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:16:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:16:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:16:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:16:18 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:16:19 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:16:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:16:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:16:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:16:55 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:16:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ec8c561a0a059b422a6e0bc84470ba215559794fd6a323d902fabd2ef58d24`  
		Last Modified: Wed, 29 Jul 2026 18:17:35 GMT  
		Size: 93.9 MB (93902028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8d3cb3f11ccb6434cb08403d7ec01fb810ccb923c1504a63502ac0f9e43c1c`  
		Last Modified: Wed, 29 Jul 2026 18:17:35 GMT  
		Size: 84.0 MB (83973596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27c3a85697e73346f19fb71fe8a1f0d2a45c6f0649b31d6ab5635dce1b90e9e`  
		Last Modified: Wed, 29 Jul 2026 18:17:31 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94c3980f543d5aa27a7f243c412593401dbcacb0f778824f9a88c2ee080bde4`  
		Last Modified: Wed, 29 Jul 2026 18:17:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:496310c2e77f7f2a4e10ec6d728b06a4caca4a89de133d4537cd7093933a0e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7347578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1845895d8fc7c2f484836ace070af4bc9ee0f202b0c2b4e6396037e0f0a2e2b1`

```dockerfile
```

-	Layers:
	-	`sha256:00de9a40f445a23f98c70fa982184babc321792e591726d0a3d9b5d30f519aa0`  
		Last Modified: Wed, 29 Jul 2026 18:17:32 GMT  
		Size: 7.3 MB (7330909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:978f9fc35af18d7e7cb9353bc00d4f02559a3dd2f99c982459cccb4f61603a6d`  
		Last Modified: Wed, 29 Jul 2026 18:17:31 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:d2a43611263731563b9e5aa510490c52cc89e7a4cd4faa1f1f2d7edbb68b50ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214630854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d13c0928f08c22728ba6d966f4da446e170948ef196235b59918bba4d97bb88`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:24:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:24:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:24:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:23 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:24:24 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:24:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:24:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:24:39 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:24:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7aff763a8eb57fcf5ebf698dacc1f1b03463dbcb9319ee44116367b258916b3`  
		Last Modified: Wed, 29 Jul 2026 18:25:12 GMT  
		Size: 90.5 MB (90536931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc585a26fbf1d7f2aa781b077a5ed4d8b808d2e50252e748c2372995d2cdd702`  
		Last Modified: Wed, 29 Jul 2026 18:25:11 GMT  
		Size: 76.9 MB (76935601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8061ceaabb5e57ac02c1822c4daf4dedae4afbc0dbf614f9a65724c0140991f4`  
		Last Modified: Wed, 29 Jul 2026 18:25:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b1ba5ace7db8d9347d11a8d370ead29780f111b869b37b10869617f2bc4dbf`  
		Last Modified: Wed, 29 Jul 2026 18:25:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:99f34aa11403d48d0af746e2221123daaff3c2694a8f405a7a9846011836970e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7334858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4781d8482337a3622ffd070cf2f69419a1471a6b59ac49a3293578c95635b3`

```dockerfile
```

-	Layers:
	-	`sha256:ec57326964ab6c16eeaf52af986af66ae81b16a4b5f14af873e5046bf2fa96a5`  
		Last Modified: Wed, 29 Jul 2026 18:25:09 GMT  
		Size: 7.3 MB (7318250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:131f600c4e037fe7f73b097d154b6e50de533aed2a22d4ec800f66d1a28dcf9b`  
		Last Modified: Wed, 29 Jul 2026 18:25:09 GMT  
		Size: 16.6 KB (16608 bytes)  
		MIME: application/vnd.in-toto+json
