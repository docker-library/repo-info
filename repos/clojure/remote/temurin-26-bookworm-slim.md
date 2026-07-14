## `clojure:temurin-26-bookworm-slim`

```console
$ docker pull clojure@sha256:d3ef4fe96919f59ff901799ef5b9a5a01a392465b237f3d78f1dd3a257f5ccf5
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
$ docker pull clojure@sha256:ade0537e58b9260b7f17e5c91f6d0be236834c6f781d30171b3f3e675a6a719c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189406282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177de85365365480d4ec69b76bed48a9b14e7739003978f127b0240fdf247fb2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:23:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:23:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:23:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:23:44 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:23:44 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:23:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:23:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:23:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:23:59 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:23:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfa1324d0645ae9c334659e9a6524a8b9621140b42ad0ff3ed80a582582a129d`  
		Last Modified: Tue, 14 Jul 2026 02:24:21 GMT  
		Size: 94.5 MB (94524297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f8c7ca348107c733f4370ec35ccf465cdd9a947f5dc520f85a228b8d4448adc`  
		Last Modified: Tue, 14 Jul 2026 02:24:20 GMT  
		Size: 66.6 MB (66648300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e4c5455d955f909941430642347c5b25c508378fe06464d2a2ccf5c331efada`  
		Last Modified: Tue, 14 Jul 2026 02:24:17 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae83c0b369d74dc2b281b83bf97992c5079a986c03817ca05801a8296dcbf89`  
		Last Modified: Tue, 14 Jul 2026 02:24:17 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f683c228f135c193ba9faac52fd5ee0d690ca7ed9f7bc1e7a8aa44a9bbbf0212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da501734d72baae148b1d862ec7320657c0bbe88651a4d73b8e59d56b66a8f0f`

```dockerfile
```

-	Layers:
	-	`sha256:ad9ab7e08090edd612572576917a081dea8c232cfa0b999061dbfc7ba4f13133`  
		Last Modified: Tue, 14 Jul 2026 02:24:17 GMT  
		Size: 5.1 MB (5078926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4ecbd43ccd071e507c4379a68e043ef8d9524c54b5f44a0aa4ed46fbb9f179d`  
		Last Modified: Tue, 14 Jul 2026 02:24:17 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9e10c2700e3b9ab38b30a77de6f0918869fc9210b70117591b8fe0c6b6f126c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188260520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be1febcc105befbe63b3c8ac2a6713783458688bd3dd3835cb6c53329840f5f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:31:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:31:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:31:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:31:03 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:31:03 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:31:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:31:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:31:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:31:17 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:31:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8042a27fafe8a8372951b9d99f509131c0d7dcd730a033722807c6550fc5bc`  
		Last Modified: Tue, 14 Jul 2026 02:31:39 GMT  
		Size: 93.5 MB (93504340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa63961abdec990f1f2e383a52d276c6049a2cc039130932c78bdf570666344b`  
		Last Modified: Tue, 14 Jul 2026 02:31:38 GMT  
		Size: 66.6 MB (66637887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d22636223ffd274879a521493cdc67a0d1881afa18175e100d691d7713dbbe6`  
		Last Modified: Tue, 14 Jul 2026 02:31:36 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eda8c6fd0f81a6294c0d550dac9fe05f7d87c7572a11dc927edcd8ea65c0179`  
		Last Modified: Tue, 14 Jul 2026 02:31:36 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d1306eb56d28cf240b0951142956922418e3662200c163fb487001a4cab3bda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a797c5c9a0c14ea6191dd1a9d534e0f82f9b47c5fbcd710ce7d5b01d7e318a45`

```dockerfile
```

-	Layers:
	-	`sha256:f7fef3ffadccb5e08c8f5253de7ef6aa4d83095b11afe0bcdf3b180827fc01b3`  
		Last Modified: Tue, 14 Jul 2026 02:31:36 GMT  
		Size: 5.1 MB (5084684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51f8e0a410d970b9f164799a7aeb480e1cd5ab013b9745ebaa32e4bbca530359`  
		Last Modified: Tue, 14 Jul 2026 02:31:35 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8797ecfd863e834382023ae2a4eae3de760616e9a362b7161c90cc8afe874d3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198457068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8037d039d732ee9b1c23c53b595be5efd03b9f6d81e6cb2d354d97785bbd1c6d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 08:55:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:55:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:55:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:55:04 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:55:04 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 09:06:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 09:06:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 09:06:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 09:06:49 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 09:06:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3015897eecfc0da8a57a3f5292bac9d82783deb51fbef75d70363d1fb6a78c81`  
		Last Modified: Tue, 14 Jul 2026 08:57:54 GMT  
		Size: 93.9 MB (93902026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e708b14d7b69fb801c20cd18f3e5a12e1d1ebbeede609f7617a4c58535f2213`  
		Last Modified: Tue, 14 Jul 2026 09:07:20 GMT  
		Size: 72.5 MB (72477588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746387808d7cc2f4af65fffffd4e1359f0909b542278729472029cb91a5e0cd0`  
		Last Modified: Tue, 14 Jul 2026 09:07:18 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbb94508328c9142699d9e531d1ffdd63f05890838cf898926a5168ecac3584`  
		Last Modified: Tue, 14 Jul 2026 09:07:18 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a8016ada5788de1046c5ef34478e39d68537b7ae61ac14c0e5f8cc4210b6a1d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5084051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aca541778a726ba982a4c5aec76c3b89720edb515762342ef5181018b00622a4`

```dockerfile
```

-	Layers:
	-	`sha256:1d26c31c3b23bd4a5c05e939744c076dd63f6f5d0fdcb509b790939930bc6403`  
		Last Modified: Tue, 14 Jul 2026 09:07:18 GMT  
		Size: 5.1 MB (5068020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2a47294c8a406e2626d191a8e7b757546105ce74bff73efe1f5dbac73901025`  
		Last Modified: Tue, 14 Jul 2026 09:07:17 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:c7d01ddbb97c42863e546c0fbcfebaa0cc8993a57d0997187899d54942643d1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.9 MB (182875223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad053dc3974f97466df0bebb13e91bfdf7ff4a6c0aa3b5ad18aaacc2008e7be`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:36:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:36:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:36:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:36:27 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:36:27 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:38:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:38:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:38:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:38:23 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:38:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9fd4c44728f9ba18a489265a8f0adefeb6be57b6bb398e5f0520057a01a4dd`  
		Last Modified: Tue, 14 Jul 2026 04:37:53 GMT  
		Size: 90.5 MB (90536928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ddaf4200bd5bc0b5fd8029b468face9fe720dee6340873c3d8f0bcca030c63`  
		Last Modified: Tue, 14 Jul 2026 04:38:45 GMT  
		Size: 65.4 MB (65448988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2586272a060d41171a65fa7da6a9a205f1c4777965a7857f43bb2948a71c5d11`  
		Last Modified: Tue, 14 Jul 2026 04:38:43 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d3b8094a52ae63c202623c7a07e9e13b4af9bfbc8c9d69109d3dc40006e91b`  
		Last Modified: Tue, 14 Jul 2026 04:38:44 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7cb9dfdf477e849d904a69883b460aeda4c0d0f8683162c3a0a20db1010ee390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5071416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af02f4c680b310f81ac0ca55458c30686cd13a1691c9677cd3ec9b3c6e447c0b`

```dockerfile
```

-	Layers:
	-	`sha256:d5b2715c34cb00e675a34f327ba3bd0f017e5dccfbb0923069607db35ba842e1`  
		Last Modified: Tue, 14 Jul 2026 04:38:44 GMT  
		Size: 5.1 MB (5055433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c396d3d5b6b8aabb61c91830c63eac0f6f1144d6b81b15bb3885847d7c75a433`  
		Last Modified: Tue, 14 Jul 2026 04:38:44 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json
