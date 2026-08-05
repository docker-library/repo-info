## `clojure:temurin-8-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:04e711509f3433d2bb4bfafe67114ac289d00c70c35017c128bca3e79b8c13f3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:ea9ba1113fc5cde08ac27afe4627e9338dc9a40297283900d6a41e0e9b4e2ff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175494774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc6c159325ec35b83c38582cf964af59ca8fe3ea1d4063f23248178bc0aa9cc2`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:17:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:17:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:17:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:17:16 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:17:16 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:17:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:17:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:17:31 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b03e8de94c96bd9e807e60158103762b8544f50d8797cfe1e8ff0eebb08ed12`  
		Last Modified: Wed, 05 Aug 2026 01:17:55 GMT  
		Size: 55.2 MB (55198698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0da9baa6ba078829b57d056a2b8635310a82f0085effbde54ceb67ebb318588`  
		Last Modified: Wed, 05 Aug 2026 01:17:55 GMT  
		Size: 66.5 MB (66518413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cedaf4a423b208a7272f3dd66a9db30eb342df3caa0b1983b2155f66d107da3`  
		Last Modified: Wed, 05 Aug 2026 01:17:52 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:304261ecdf668991072d43bae213a3cc2277eb4008ec3139f98eb4da5ef0ddf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7540157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16de5ac9ca60d49ada89e4baea966484bb8fd8fa4e6fd2823fcf0e5a0d6be02`

```dockerfile
```

-	Layers:
	-	`sha256:b79b336c0c873ee15e2a16b1885c69c13b82ac80b0d4204cf2b43eaa63a24982`  
		Last Modified: Wed, 05 Aug 2026 01:17:53 GMT  
		Size: 7.5 MB (7525809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db89ec5528852c4c176c980165a9d7308435c0d76fd65f54bed210c288b6c0d4`  
		Last Modified: Wed, 05 Aug 2026 01:17:52 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f9f2c630dd4aeaec385df96585127c905a668e3c9e80ea5efd4eaa6e04892ae8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.2 MB (173219725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb06647951d9b24d211377f9a8602c6b5abc0c3c0161a489c17689fd976af56`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:23:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:23:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:23:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:23:45 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:23:45 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:24:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:24:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:24:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17fb771fcacb28f87e1d65db50e6c60a1a1622438f214d192112f4566076f616`  
		Last Modified: Wed, 05 Aug 2026 01:24:47 GMT  
		Size: 54.3 MB (54272910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b2a8e16f6239287da0e5ccdd9a6bfa400929374ae810e386f3da1874867245`  
		Last Modified: Wed, 05 Aug 2026 01:24:47 GMT  
		Size: 66.7 MB (66685270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063cf8a77cced2f1434d0bf672e93fd3f649779c4979c288864feaacc42ac90c`  
		Last Modified: Wed, 05 Aug 2026 01:24:44 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:63e15131df1a77486eacebfe3f47cb3d371f04784b0c543431995e0c471d3a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7546074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92b7fab05449e0cc06e5489fd6c2dd756c7fed7aced9ff34cf8774f3470a352`

```dockerfile
```

-	Layers:
	-	`sha256:283abb80a4afc7d60000a9b328ed36e42841300da6bf43066247df40e3629689`  
		Last Modified: Wed, 05 Aug 2026 01:24:45 GMT  
		Size: 7.5 MB (7531608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb4e04007eb253cfb85d6b12f375a7d6b4bd101c7473d1878d95fc84cfa62f0b`  
		Last Modified: Wed, 05 Aug 2026 01:24:44 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json
