## `clojure:temurin-21-lein-trixie-slim`

```console
$ docker pull clojure@sha256:ecd3cea015ce11e3e463ea1f1d0920cb3fff08ae789192f87b59f9c02d458ff6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:84bbc1d057bc3894399e45c6bf11c53dc36e0d3b691657e2bd0ad22295025c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.6 MB (209553953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46da0b2e119a6f3a9fe7010347edc2bf5eb81a3f4dde6331a31cc070e2a2b386`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 18:10:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:10:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:10:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:10:12 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:10:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:10:12 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:11:46 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:11:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:11:46 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:11:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:11:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:11:48 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:11:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ef35c3c5d57770a970d3fe40226664957244eae0c9b58d55361b3984fbb8fd`  
		Last Modified: Fri, 20 Nov 2026 18:12:07 GMT  
		Size: 158.4 MB (158440908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44f7cef24378cfd408daef0c928bb7ae1d526b6684e6ed86e70fb942ee1f53d`  
		Last Modified: Fri, 20 Nov 2026 18:12:05 GMT  
		Size: 16.7 MB (16740807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27d15271c7994eec870c359560cb098d15de33dbc263de10a616da7f9bed588`  
		Last Modified: Fri, 20 Nov 2026 18:12:04 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b105d0ea0e93ea4f287f5aa31624cb25fe5d5381916818c78e7e399b398336`  
		Last Modified: Fri, 20 Nov 2026 18:12:04 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:408662cf928f68f61b1020259443c4ebfaa7b372c9b628a087cc5f9dee1dfbe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ceaf6f2f1465d099412c7c4f0a83a83ec4b4c5a52c47c904fa2706318ae48b`

```dockerfile
```

-	Layers:
	-	`sha256:15bd1a6ac4896e19da2d1b7577c62c6771be8a8f44163351e393cb1f3263b507`  
		Last Modified: Fri, 20 Nov 2026 18:12:04 GMT  
		Size: 2.4 MB (2373606 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a1a6b3ddd4a259030747d869e2fc719347a409c78c77a11f9157ea6f8a7518e`  
		Last Modified: Fri, 20 Nov 2026 18:12:04 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b2b398df582c4526d3736614dc77789c6b11e4a665fd5f9e2a1b17272a580849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208129708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9396c559668f202088aeb636147dc27675c7bc38ec392d835053cc223a09e574`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:04:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:04:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:04:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:04:59 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:04:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:04:59 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:06:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:06:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:06:19 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:06:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:06:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:06:21 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:06:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3658acdb7deafb1ebf695bf78ecd2b3833aab54d0d4d50b2808f9a5db87843`  
		Last Modified: Thu, 12 Nov 2026 01:06:43 GMT  
		Size: 156.7 MB (156691653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cd49a3c4692b7ed485d0f88af32db6dff576615882996d07a95f4f2bec11dd`  
		Last Modified: Thu, 12 Nov 2026 01:06:41 GMT  
		Size: 16.7 MB (16707871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d22b9779274638f8e651616b35584c108bcfa1e91d68d4f3ae27dcc887f36e`  
		Last Modified: Thu, 12 Nov 2026 01:06:40 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4cb8e575ced568217a05e5641bfc1c9bc089cb47c2bdd1b23d2f9d7f43d822`  
		Last Modified: Thu, 12 Nov 2026 01:06:40 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:63d444e251b0ec00c112911f218d5f68134efdbbc3b6fe4f64e1f3e8c380d9bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc56662c3f3f1e1cbc18045efdcc15f7aabc5210da7af8897e507ebf0bece88e`

```dockerfile
```

-	Layers:
	-	`sha256:d00bfbf0a08a4cc4582109ca3081fdb2552145f77b0f2a8c5973d6e1359988ea`  
		Last Modified: Thu, 12 Nov 2026 01:06:40 GMT  
		Size: 2.4 MB (2373208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8335bd34dfd4476a3124c797cda68c03fa4904610a64fc7f629aa7f9346f8152`  
		Last Modified: Thu, 12 Nov 2026 01:06:39 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ffd61f16489d08f98676be5aa584e89334d0ea879c97e2d2e241ef13e3f5fa31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.6 MB (212559587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d09567ff7d979053d5b3c05ab99c830b41ec5112b5291b6c0de059d6992c480e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:37:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:37:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:37:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:37:00 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:37:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:37:01 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:40:11 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 19:40:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 19:40:11 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 19:40:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 19:40:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:40:15 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:40:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aba4188cb6f0f84c779aaa9be30cdc9a9dcae3973be15ba857870e7be06825b`  
		Last Modified: Fri, 20 Nov 2026 19:40:59 GMT  
		Size: 157.6 MB (157596487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c11ad849d3ff68bf29a7746949913d2a7f873295ebae54a40aa05662f6e91d1`  
		Last Modified: Fri, 20 Nov 2026 19:40:56 GMT  
		Size: 16.8 MB (16779325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c071624106091fdaa692d5157c5b4ba08aa5e53547c6673f79110ac536e6704c`  
		Last Modified: Fri, 20 Nov 2026 19:40:56 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d3d46e79797956c188023179aaf175a06cf8b91c6997a27b6a514552a05735`  
		Last Modified: Fri, 20 Nov 2026 19:40:55 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:26e8419e5f30fbdcd99abe811860954c2c51b4581f02b8571140fda829097681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ade481d5f0e44bac983fb82d5ae183d03779baf0d689b034f3c1500a9dfa70`

```dockerfile
```

-	Layers:
	-	`sha256:ba756cd549ea75da9644ab0c452b9767e6b7288ccd3b0eb323d3435ec416f23c`  
		Last Modified: Fri, 20 Nov 2026 19:40:55 GMT  
		Size: 2.4 MB (2373340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7c82a8e8c8162a72b38fd7edd32953cf55d86501c03c2449ecb7ea1368b3e9a`  
		Last Modified: Fri, 20 Nov 2026 19:40:55 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json
