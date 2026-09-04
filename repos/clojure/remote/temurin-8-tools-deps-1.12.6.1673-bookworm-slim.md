## `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:1699d0c535a8a6de7a38350a9b4ecd79df7340bb7d28bbc2ae4f806a4c149819
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:92336c016a580479c896d222246d49c3c836faf7040284f09f5a0101a40bb831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150082722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff58236856ed5014c965d55d7cfebdc592f86a781bab8533710fd7d4e0b4f9c9`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:00:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:00:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:00:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:00:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:00:49 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:01:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:01:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:01:05 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1c2908d3e21b933e391c5f36aa6d18ddc7acf9d9656e1f894ba613d9583db91`  
		Last Modified: Fri, 04 Sep 2026 00:01:22 GMT  
		Size: 55.2 MB (55164395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d801538755ce67314beeaa927494156f06e07a3f9f9be8443751db996a4c84fb`  
		Last Modified: Fri, 04 Sep 2026 00:01:22 GMT  
		Size: 66.7 MB (66685026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc16ba2fe0fb27df7ff8e50692f2259ff5ca1f2ec061eed01f135507e5c92b8`  
		Last Modified: Fri, 04 Sep 2026 00:01:20 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0347ae8e97019f566d47d443bc0b246250be11a4aa07021c18fc10657170c3a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:645c6ae68f1e308ed0f0b1020debf45de36021196147f544bc7affe33aaff321`

```dockerfile
```

-	Layers:
	-	`sha256:d5f2be5fa291480d5f84d9a80794a491d6b3370404c9bfa002d153415ceb9188`  
		Last Modified: Fri, 04 Sep 2026 00:01:20 GMT  
		Size: 5.2 MB (5239598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:128d529d569364dab52ab1ee177e418a8aec09b747e2b957f916e65f1e1dd2f0`  
		Last Modified: Fri, 04 Sep 2026 00:01:20 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0bea9227b701a672a85a03ab6f1dffe5bc515f9d980e0f0f1f04bc9e9e3c54cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.1 MB (149064611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64ec211ec1748200cd84cb646332986dc57aa640ea6cae3948aee6a3a11e2b6f`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:03:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:03:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:03:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:03:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:03:09 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:03:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:03:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:03:25 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019fc7765856f56dd57e8e327b55b77cae886a25da08c9b9c8558aaf80f8fdef`  
		Last Modified: Fri, 04 Sep 2026 00:03:43 GMT  
		Size: 54.3 MB (54262762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc58439d8b32b7781b8bde5d775adcd97bdf07050d9af51fae5c2e8daec630ca`  
		Last Modified: Fri, 04 Sep 2026 00:03:43 GMT  
		Size: 66.7 MB (66683913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924e8dd106f9c0e35a4fb4d10c61dfdfb3ae48450479482da24278b4a87ec02d`  
		Last Modified: Fri, 04 Sep 2026 00:03:40 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7d920356e19c0e60f7c70965eb4874da04affa9de057e8f98b517f0dafe76fad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5260579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06e7649ada7d3245f5654f465aea10a2b53759a62c98a5022bb48ace804b49b7`

```dockerfile
```

-	Layers:
	-	`sha256:5921b45b0356087033e5c5fd8b3a629231a78e6c9a534764fc3bbdc27b4e5b49`  
		Last Modified: Fri, 04 Sep 2026 00:03:41 GMT  
		Size: 5.2 MB (5246059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f42c5b23d72cd56f9100c438a891d0da1e3c0b39cf876b817145af8342f54534`  
		Last Modified: Fri, 04 Sep 2026 00:03:40 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:6c43a9a6137098d9ac5360d34fc18356314e4710c32cfc71f6210411f1e55ed8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157246429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:522cf41e45740ae9c4751c87e3da502ddeeb5e84c5ba7ca4d757a156e785d28e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:01:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:01:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:01:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:01:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:01:16 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:02:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:02:06 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae276a4f9319465480c60731d2db38a6791b5c65d840ae9a8d2bf9216c2eacc`  
		Last Modified: Fri, 04 Sep 2026 00:03:00 GMT  
		Size: 52.7 MB (52670660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a2124bdf624e10e9a717203b137674964914ed843ea9b2f4897e8ceb0e5c98`  
		Last Modified: Fri, 04 Sep 2026 00:03:01 GMT  
		Size: 72.5 MB (72498647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d921fb9cb36192ed0886e5f63ababced757d15a17881942dbf47db52c0127adf`  
		Last Modified: Fri, 04 Sep 2026 00:02:58 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:57fd73ed1bbf8fb86c733104f2e07bff64a40834e91193e42cc729bfd0c38783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09cbb41cf11a4e8ea7eec30500d3f0baf4733479132f6a07c553b19e39dd9d16`

```dockerfile
```

-	Layers:
	-	`sha256:a94fe4216677209a61a8e4f69e5c7fe4ef956bc7d59701054b67e5e1ba50a2fe`  
		Last Modified: Fri, 04 Sep 2026 00:02:58 GMT  
		Size: 5.2 MB (5245351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b83e76271ee2ee63493c0c68325ab7644f86e2dc47ab41849fe23af274a450f5`  
		Last Modified: Fri, 04 Sep 2026 00:02:58 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
