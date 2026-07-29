## `clojure:temurin-11-bookworm`

```console
$ docker pull clojure@sha256:d5e97f7006ab9ebba1d7613ad70ea937762bf9e4eea6606e28f3c173757f2615
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

### `clojure:temurin-11-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:4e005fae7f298af130d8f75a0e325203f1edcd32eb148a58913103cdb389339b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272528727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0fb6ff1342203595abe63e808fc45a32d53de72f08c3feed5163697b3934f6c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:55:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:55:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:55:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:55:34 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:55:35 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:55:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:55:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:55:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee18d632abf6676474820e853fc0da6dfa0a10620deadb5b6db9c5e65f790ef`  
		Last Modified: Wed, 29 Jul 2026 17:56:10 GMT  
		Size: 145.9 MB (145886185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b060f581b0ca6019c18bdd253c647d07dc3e23c2553be5df8f055c9556ef1ba8`  
		Last Modified: Wed, 29 Jul 2026 17:56:08 GMT  
		Size: 78.1 MB (78144493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce28f558dc09728dd46230aecad479d3e7c33d769c9ed981be13b3782b38a80`  
		Last Modified: Wed, 29 Jul 2026 17:56:05 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:347c7257f4ceaa68ffc002d011d0e98878939bbd7121dbc7e868a0fd4315693c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7410049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:071a1f34b893ca8bc2ffc6983c7caeca4d8fece4c9c9576414935d39771ba8ba`

```dockerfile
```

-	Layers:
	-	`sha256:4d168e73e72f0ee0583297f93332873c06089a5f4b4d0d172beead630de0f3d6`  
		Last Modified: Wed, 29 Jul 2026 17:56:05 GMT  
		Size: 7.4 MB (7395686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb5bf664787041f29471212c0bc6fc61974423d800f24fb46fd06fcb24c2e4e9`  
		Last Modified: Wed, 29 Jul 2026 17:56:05 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1a44a410ee503bc58b74e2bf493a056efb4e2e71e3de2f2807e4b8f0a2bbb30a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269095157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0afb2f361887abe40bb345818afff25c038abfff5351b2ab38e967701ac4f2cb`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:04:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:04:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:04:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:04:04 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:04:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:04:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:04:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26fcc4c6943b086b8700e3be1abe6981835bce08edda1257c8107f025ca4a79c`  
		Last Modified: Wed, 29 Jul 2026 18:04:41 GMT  
		Size: 142.6 MB (142582144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3959a9b22e0a80755d62cb7b6f20a02ffd0f640338341baeead61a242c27ac5f`  
		Last Modified: Wed, 29 Jul 2026 18:04:40 GMT  
		Size: 78.1 MB (78128680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2a443b55d73b5a4e80366309e9d4bc255673a2f3ea2ccaa5b54a9edb415b0d`  
		Last Modified: Wed, 29 Jul 2026 18:04:36 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b4896cd5193143e1cd3a7cef89200f8c371b4d3f1e8e19964d8fc5aea9dd28b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7416547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b773088167773a949b66f3da8ecd3fc7a380732f95d4c7a282faccaa68a82e97`

```dockerfile
```

-	Layers:
	-	`sha256:2303f5f81232057f311f5ab6f7c54f71c642423d6e0bf9f4bff0be61e30144e8`  
		Last Modified: Wed, 29 Jul 2026 18:04:37 GMT  
		Size: 7.4 MB (7402067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a91d8a6c20e63eda692b31b096a95f668b22a2983fc997ce84fa21ddd33d55ba`  
		Last Modified: Wed, 29 Jul 2026 18:04:37 GMT  
		Size: 14.5 KB (14480 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:20cd9c496ad45b86cffc059bc01548ff897e57b3446f9789087385b4d7bf47ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269426338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d7152df6116d6a0b235403a9d18d41de12bc249c397285460508737b8fd9dc3`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:55:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:55:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:55:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:55:57 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:55:57 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:56:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:56:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:56:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:466a145e9c7ca2bade23c688525f148bd88d14b22719a28db776b720280857f7`  
		Last Modified: Wed, 29 Jul 2026 17:57:15 GMT  
		Size: 133.1 MB (133109913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c3c808a996b8395760b195c9c5780664edca629053435d2ace5d683a9d0e73`  
		Last Modified: Wed, 29 Jul 2026 17:57:14 GMT  
		Size: 84.0 MB (83973946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61644cd27105c990de260d2efc97a42f58d2d859981838047cda25a10e2bea9c`  
		Last Modified: Wed, 29 Jul 2026 17:57:10 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:39147ff8aa360280865614286b794232996756f7d51b60ed7e8dae9fd5519abb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7acaf3f84c380bf5af1ba5d8777b498711455c9cb5644e9e2f61ea1d7580cdf9`

```dockerfile
```

-	Layers:
	-	`sha256:d92ecdbcb26aa69bcc7566715bcfc56b9d30ae819f09cfeba3b3c05158021ff8`  
		Last Modified: Wed, 29 Jul 2026 17:57:10 GMT  
		Size: 7.4 MB (7400287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f79c65909fd45ead5b4d05c9f7a39f6740247cc7ed3f55b5f37e6c8ee0d106b3`  
		Last Modified: Wed, 29 Jul 2026 17:57:10 GMT  
		Size: 14.4 KB (14409 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:3a9530b000bcf358f2e81baed40d059a0453fab9382a4667e40bbda5f08fdf88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250745900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15057b5fc6216c9cfc8d9170af19e081371f7e2ce021ec98b20b3202ff71c0d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:16:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:16:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:16:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:16:46 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:16:46 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:17:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:17:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:17:10 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c192ec82621558878f4cb3cb17a6f698466202c1fde68b577a19356bcccdb04`  
		Last Modified: Wed, 29 Jul 2026 18:17:41 GMT  
		Size: 126.7 MB (126651694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912fb0672dcbd81ef5bbd459a849b30d01185a115fa5733bc3c8a83d2fec896e`  
		Last Modified: Wed, 29 Jul 2026 18:17:41 GMT  
		Size: 76.9 MB (76936280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586d59d01f5a26e5de5a6f7e13c3c5eed9c1026c00849f46fdd555a2946962b2`  
		Last Modified: Wed, 29 Jul 2026 18:17:38 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:61c225bd7779791d2c7a1586de1948d2a6b4f39071d0614cb14342c63b110cbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cc5cf006511d80cf5bcabf689e0651bf3fea7d947c667c7402b8265670a9ca`

```dockerfile
```

-	Layers:
	-	`sha256:476dd9e7d0eed255507a27b9165b5fecee799cc11de2322e7e5977fa6170cf37`  
		Last Modified: Wed, 29 Jul 2026 18:17:39 GMT  
		Size: 7.4 MB (7387009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d17d69b4dadab0ddc4a01f6b7bc383de98e96846ed886d079316a31f2c6606af`  
		Last Modified: Wed, 29 Jul 2026 18:17:38 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json
