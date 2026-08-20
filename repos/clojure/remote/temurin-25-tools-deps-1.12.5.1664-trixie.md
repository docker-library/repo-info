## `clojure:temurin-25-tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:a78691d4e5e86b8b6bd63a676d530ccee557d482ef8712545202ba70bb9b4ce9
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
$ docker pull clojure@sha256:071fa7272d1c882124c6a7c693c803556b96e66d4b11d11d2de0a7ac111f3da1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224426817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7bd36fb97e44d0febc4cf5cd7faaba4eeca4c9c86036d204bdab9b48a3dca27`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:49:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:49:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:49:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:49:21 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:49:21 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:49:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:49:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:49:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:37 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:080382cbda6b6daa1b63bff56d3ce9fc6f3945c99c983209db574800deaf9a8a`  
		Last Modified: Tue, 18 Aug 2026 20:49:59 GMT  
		Size: 92.6 MB (92574587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f5a3bb4db37d417aaff0fc63f92a48e70e75bb43caeef949618f3daec2178b`  
		Last Modified: Tue, 18 Aug 2026 20:49:59 GMT  
		Size: 82.5 MB (82538877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a3cd5d5d62a2dafa09b635d4213176a2cbcad8e851f95ce52855af8d5f3b08`  
		Last Modified: Tue, 18 Aug 2026 20:49:56 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4495ca795cd10d65804870c62aa3bc0268f07742a45c6070a7b28de3d20a56ea`  
		Last Modified: Tue, 18 Aug 2026 20:49:56 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a8cb4ea01ca1984a63f700b6654d0c470121a235374a7a53e010414ecc94a07d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7453524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e580d2ee31d35650d4bf4e14e3b5c0250172d48bd9b228287a68c35952acf380`

```dockerfile
```

-	Layers:
	-	`sha256:0ddc76a889e1595d129628e914561d5384e673284b520848f7be663f1ef5fc44`  
		Last Modified: Tue, 18 Aug 2026 20:49:56 GMT  
		Size: 7.4 MB (7436955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:082a5de84eb65df56c1056c28b1094c14f9ef14a88d504d67c99e318d2b26978`  
		Last Modified: Tue, 18 Aug 2026 20:49:56 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9d606e717705dde2ed0802be98825da0f4257da85bb82d517e809bbd90d3e50c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223576637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dab9e76c5971859ba2fb567a9b24b32cd33409270207d71c98fe9e387b54513d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:49:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:49:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:49:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:49:13 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:49:14 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:49:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:49:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:49:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:32 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a816979f3c0dcd1200e45c770505efd2b6306ae8637b1abbb4d75d21b6287c8`  
		Last Modified: Tue, 18 Aug 2026 20:49:55 GMT  
		Size: 91.5 MB (91542255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:930944da75c4788ba51132de267548208d17612ca399c4f3087915fff83e985d`  
		Last Modified: Tue, 18 Aug 2026 20:49:55 GMT  
		Size: 82.4 MB (82359498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977f685dad75a208e7854bffb10940c7be01ed5cf010f622a81214daadaea9ef`  
		Last Modified: Tue, 18 Aug 2026 20:49:52 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f7f07c78dc8d30b5a18f67d33c52bc4d8306ca045b8ce191b3f169ba3fb10d`  
		Last Modified: Tue, 18 Aug 2026 20:49:52 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:899cd5a02f923d21e0a974a72b035e375b5a5fb0d0dd6bdd053c241bd13aaf8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7460080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d469b83c75704ef00c4d3f85d92a6d6b419616d6c123caef092988c58be58f58`

```dockerfile
```

-	Layers:
	-	`sha256:3e052ba7b4cabc9e5cad25b83ea1f8a363fdaff10093fccb313b1ed0eca92b0f`  
		Last Modified: Tue, 18 Aug 2026 20:49:52 GMT  
		Size: 7.4 MB (7443369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6584ac94198dbb8728f18446bf3d73b9f97bf3863df990526ecf7e961816301`  
		Last Modified: Tue, 18 Aug 2026 20:49:52 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:12daa5643ae263cd0a1600d669b73d5ef54318a597d9656c251b45bb2205f3bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232999217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb08ec3d967ec48574e74a9c5a4aa429ce49efdb80a3f05ad6d5f7793edd4270`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:33:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:33:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:33:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:33:36 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:33:37 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:40:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:40:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:40:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:40:07 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:40:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efa0cee089e58c8faae54912fc9dcd6aa4f9d1b11a1b44c0b947c37df7dd367`  
		Last Modified: Thu, 20 Aug 2026 01:37:43 GMT  
		Size: 91.9 MB (91914013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3446bcc15b07c8b5473d10eaf57053b01af4559acb9f4f00edd42f7d9a8855b`  
		Last Modified: Thu, 20 Aug 2026 01:40:46 GMT  
		Size: 88.0 MB (87950556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74631f8fdbc03ea4d97beec956753284230847d1e91e4c7990f6e0cdce73aa60`  
		Last Modified: Thu, 20 Aug 2026 01:40:43 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f2eed91fcaa688a6c7f2ab4af4e1ed70af590729846868fbcafe29bfb2d7b8`  
		Last Modified: Thu, 20 Aug 2026 01:40:43 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:731ea30ac46a67613065bbade161ef7c9dcd58ce406af6229b3527087638aec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7441329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd0872ac199156636fb042adc59e897a79d80394edcc00fe771be20b258e31e`

```dockerfile
```

-	Layers:
	-	`sha256:713d6e09fd7568fcc12b5bda3d59c7fba582d23722d6ccd9380f2f0153bce8e7`  
		Last Modified: Thu, 20 Aug 2026 01:40:44 GMT  
		Size: 7.4 MB (7424700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55c27578655b3d78d7a9448b9c41165c1b6661df4e90ee095e09a85b88c5ce9c`  
		Last Modified: Thu, 20 Aug 2026 01:40:43 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:c852479751e95b2cdd7e445830f3c5aebac4755279bbda8593aa11c34b913aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221322355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28307e46abe9cb3876c59710e9c95e2cc8e31df1629cf915e232f78ef04c491`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:49:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:49:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:49:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:49:48 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:49:48 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:39:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:39:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:39:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:39:34 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:39:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057496d5f2c6be61b50be1fa5220b5fcd7f5354d90cc41d88babbde4bc230aae`  
		Last Modified: Wed, 05 Aug 2026 01:51:31 GMT  
		Size: 88.4 MB (88420356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821fa7078e8767032d478137ee4591a08fd80cc0876733676c71760cfc22c827`  
		Last Modified: Tue, 18 Aug 2026 20:40:03 GMT  
		Size: 83.5 MB (83519532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ee8af63d1686ec5737a2386d0ca4515ee38c4912b0a51296c431ec5f1c508d`  
		Last Modified: Tue, 18 Aug 2026 20:40:01 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c8f47a3b46392136e1f1d4bcc18cbb5c4e7bf01c33563dbb9dcb122b58b672`  
		Last Modified: Tue, 18 Aug 2026 20:40:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:09d10150a9d0aee20ce45a827ff7048f1e26a2f2ea17072fc4f8cf1df3c9bbdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7434008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4bc54f449fb3935876d41fed785435788ca55c622cb24282c4929240a60fbc`

```dockerfile
```

-	Layers:
	-	`sha256:55df1913262282c64c783bcfe72a92c0098c70a07b9b410f01c416d24e46ab10`  
		Last Modified: Tue, 18 Aug 2026 20:40:02 GMT  
		Size: 7.4 MB (7417439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42578cc3c31990116b5fb4acbe33d96e8592774487adc0abba945955ae63fbff`  
		Last Modified: Tue, 18 Aug 2026 20:40:01 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json
