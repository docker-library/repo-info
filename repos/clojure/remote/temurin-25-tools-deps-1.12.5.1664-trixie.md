## `clojure:temurin-25-tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:841f0dba6464e6203cb791b4f51102866077320575aee715e323f533a52166b0
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

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:0f801926b76c8bdcd56681a61928b4c7420fd4b09cdcb97cee0fafd2390fe0e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224425627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0881d92079cc167746bdf0b1a87c4025ed46793420d50e35302b2422f04ce01f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:25:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:25:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:25:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:25:19 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:25:19 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:25:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:25:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:25:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:25:37 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:25:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0fb3bff4982668a54499ac584644dddd38cb04b6f7a3caaf475da38ce1cfd2a`  
		Last Modified: Wed, 05 Aug 2026 01:26:00 GMT  
		Size: 92.6 MB (92574587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55509381f01f2a36754aeeebd28b72d412702d992c9e9bff4bb4209003288ac4`  
		Last Modified: Wed, 05 Aug 2026 01:26:00 GMT  
		Size: 82.5 MB (82537687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2a7a2de0552a1ca9b76d810562240790f5bbfc871bb3afb904955685fe474a`  
		Last Modified: Wed, 05 Aug 2026 01:25:57 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d206df99307c26460a452359fec949a41b6f2642ed91c7b5f66419d9533990`  
		Last Modified: Wed, 05 Aug 2026 01:25:57 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:453752df6892d3d142f5a95278fefbe76a4443b7e51e1d7944ebf3d00b05e1bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7453524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9874f515b2c8ffb8b9063481779ae8e7abef8091d59d87fdd889f5cc35c0d3`

```dockerfile
```

-	Layers:
	-	`sha256:0e1c2a4aeb024564c9ae785c8023f66e34e6be51524156e1d65d719e0dba02fd`  
		Last Modified: Wed, 05 Aug 2026 01:25:57 GMT  
		Size: 7.4 MB (7436955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12de9497e6f9757bfb9bca057548eae1705dc8d56bb71ad9449691e9fa7fd365`  
		Last Modified: Wed, 05 Aug 2026 01:25:57 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ad72a207eace267e00c435c57f4dd576e227309683df5378971a7b3595d25fa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223576076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9a38e34485a9d018658d6822753883764dcb2550cec81a9e1083fb5b1f09922`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:31:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:31:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:31:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:31:07 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:31:08 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:31:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:31:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:31:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:31:26 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:31:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4137b7e6f1d2676360e1672a468cf25c771709c07fc4093874dfef5eb101cf3f`  
		Last Modified: Wed, 05 Aug 2026 01:31:48 GMT  
		Size: 91.5 MB (91542236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eafc3ffed61eb33bae3e4aaf474f9bc45264f8e89b93f2f5b99919b0cdc90e7`  
		Last Modified: Wed, 05 Aug 2026 01:31:48 GMT  
		Size: 82.4 MB (82358957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c564e47168b5adfbbfe2d808861cdfda0619e1d9f469a2399f9e8a68bdec9caf`  
		Last Modified: Wed, 05 Aug 2026 01:31:45 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5f59009886258b59adc7df27d2d5e90c5f29a4ad07f74837055e20894ebc18`  
		Last Modified: Wed, 05 Aug 2026 01:31:45 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d5b454ccce0aa23cb3fa7927aaa47de8303c8cf14d043a96745ad5b28d31bb0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7460079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12cdfcef7328d4e78d30c4f22661aaea582f11e240f3d69ecded4997558495f8`

```dockerfile
```

-	Layers:
	-	`sha256:f05077b62969042a5ac1707a818a3116a2ac9119711f8a7e4ef15a07f43c9532`  
		Last Modified: Wed, 05 Aug 2026 01:31:45 GMT  
		Size: 7.4 MB (7443369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba7a5c4fb2f650828c61aa65fcb98c56f559641d884d3f677330a97f27614b69`  
		Last Modified: Wed, 05 Aug 2026 01:31:44 GMT  
		Size: 16.7 KB (16710 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:5373f302d4e38682800f97d6cbaf67215d714eb5acd6bece26b5c8ad98e91a17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232998419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145593f15a55da0796e1183e5015da902584385369abbb7115e88da68a223f4a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:52:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:52:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:52:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:52:54 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 07:52:54 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:57:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 07:57:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 07:57:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 07:57:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 07:57:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af2f2a5db7a79898d4cfffc627f977cdb8e72dce1a2c4396c402c7e8ced0e86`  
		Last Modified: Wed, 05 Aug 2026 07:56:20 GMT  
		Size: 91.9 MB (91914017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036ac8dc433c6f622029870526b35519250b087953248d4522ed3741a5e74ce1`  
		Last Modified: Wed, 05 Aug 2026 07:57:51 GMT  
		Size: 87.9 MB (87949757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8af90b49ed3cdf1a14da95c9d533f51e80df89ef87293e3d1037b79213ff48`  
		Last Modified: Wed, 05 Aug 2026 07:57:49 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2a9293849c2501621fee04df5d0e1a39fae9b2e6454ea45ad7c8fce000d783`  
		Last Modified: Wed, 05 Aug 2026 07:57:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f6efee7f1a73029564b4d0c29d167d0b81d2c543a642e16376bde32bb7a58cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7441329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb5cccd3f5c5f93de994ad7156fa914c896c30fd6bfbbc6d7e2414711a60dab`

```dockerfile
```

-	Layers:
	-	`sha256:1913efd408389a1726d3ba25556b389fd089ea2fa0f5a90961574ec40798c867`  
		Last Modified: Wed, 05 Aug 2026 07:57:49 GMT  
		Size: 7.4 MB (7424700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49d630ba184b9324d06bf2de9d027ea36ae748b6adced98e48d53f6b8811d410`  
		Last Modified: Wed, 05 Aug 2026 07:57:48 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:3d680c232f076d94654ab78865f3e3b613bfc5135a093d68545543e0ad5b4a12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221321395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10dadcaddd9ac83a1b125a0e9a180d7a8cdd46442c7f209e738ea88fcdc13ad9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:50:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:50:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:50:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:50:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:50:08 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:50:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:50:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:50:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:50:26 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:50:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9facd26fc0fc940c72cae7c5e7902f12d142e5cf04083a8b66572e1f4b45abce`  
		Last Modified: Wed, 05 Aug 2026 01:50:54 GMT  
		Size: 88.4 MB (88420357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a61e9bb77a539e320d7ed169dd4ed1de2cd7f37d02d2392a05ad31b1b221ce3a`  
		Last Modified: Wed, 05 Aug 2026 01:50:56 GMT  
		Size: 83.5 MB (83518573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f076c2b107fc4e91d5f79447459f40076c4f7d22200fc338b406663b6d2d55`  
		Last Modified: Wed, 05 Aug 2026 01:50:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5142b689a0d47fa691ffecb0bfaf94bd0b0368e92473f70ad5d16dacc58375e3`  
		Last Modified: Wed, 05 Aug 2026 01:50:54 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2662c6c4170456a5a30fba92357fed8af4ecc7a213c6d3a8bbe09fdf520718de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7434008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95867de8dc32dc8565001918768d19e80f2ed18e5f8921010b13ae24ea06ea9b`

```dockerfile
```

-	Layers:
	-	`sha256:79cb7271b596b711af1c24f403862152dc4e0210ae89860635e44d933de79cde`  
		Last Modified: Wed, 05 Aug 2026 01:50:54 GMT  
		Size: 7.4 MB (7417439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffe1e7a71ec0a5ef1b46fdb32ebb98e8d368972b16304a38ee1ff8de68e56e4c`  
		Last Modified: Wed, 05 Aug 2026 01:50:54 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json
