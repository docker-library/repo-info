## `clojure:temurin-25-lein-bookworm`

```console
$ docker pull clojure@sha256:ead46398fa70199615879e16e61e2e1f6dba7322a749a38688ba59665cbe5a46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:be004ffb0673824503f29a465222918ba32506b6c4619fa7720f6e50e9290cde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165788461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bd35c6642e0538640c9c068c2814c82e743709e1a5b197ee4540c97077d1b2c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:19:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:19:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:19:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:19:38 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:19:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:19:38 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:20:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:20:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:20:44 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:20:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:20:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:20:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:20:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf92e4e2062ac610146e27c0ca76ff5c873f5370ea83701c5c1c4f7161ae7ed`  
		Last Modified: Wed, 21 Oct 2026 01:21:04 GMT  
		Size: 92.6 MB (92618013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5e8874551dd2fd9be376efe7abd188f059b63144e2507f2aa48dc88d44d5d38`  
		Last Modified: Wed, 21 Oct 2026 01:21:02 GMT  
		Size: 20.1 MB (20132765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec2223508d415cfac3f3991c01badca5c3c760f95211b9d76f37b6586d30c2d`  
		Last Modified: Wed, 21 Oct 2026 01:21:02 GMT  
		Size: 4.5 MB (4515169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a9f73d0ac0356e444be136bf65b897074db598113e8b64d8c7c22272f0e685`  
		Last Modified: Wed, 21 Oct 2026 01:21:01 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:00ffb58d75e0609cce8ba6d155c9e0bab814b5def2b078d2c5037810f6e51c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f93f8fda6353841b4a1715ec7a9727a2920b2880bfa2692375a031c4bf2bcbc`

```dockerfile
```

-	Layers:
	-	`sha256:cde099afdce76e3e1e9e6b84f1fbfa5fd84dcdab5c4ad5e86c9fbd9a9b921096`  
		Last Modified: Wed, 21 Oct 2026 01:21:02 GMT  
		Size: 4.3 MB (4257298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:137e8320f848c0a843738d2a22c4a2884dc168f8589a61bc7eb905bb480ef3eb`  
		Last Modified: Wed, 21 Oct 2026 01:21:01 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:777b5b786f777589b6acffbdfb6aabc45aa2c3254043db528d2da379615a5abb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164414237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f648bcd6624b84ab4148f621a8293a9ada80fa53715d7a39c1593f8aac7a1e69`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:25:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:25:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:25:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:25:59 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:25:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:25:59 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:27:10 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:27:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:27:10 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:27:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:27:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:27:12 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:27:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cfe49eed1d4d2480701d227824b76d66f080b5d5e5d966b112945b57ffb0d75`  
		Last Modified: Wed, 21 Oct 2026 01:27:32 GMT  
		Size: 91.5 MB (91528875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf1c00c42aba14e4d79f71e11581255f202bb67071db91add98e1a1b69aa037`  
		Last Modified: Wed, 21 Oct 2026 01:27:30 GMT  
		Size: 20.0 MB (19966605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a5ae88da5a5792c4b8149e35f8cc2cf556fb2371915fa7e81718d67d8b55a9`  
		Last Modified: Wed, 21 Oct 2026 01:27:30 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dcad8e6d61a905c3ec57038869cd544a19969035f0acd3dedf772978f53e213`  
		Last Modified: Wed, 21 Oct 2026 01:27:29 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3d3de121bb5b5b0a77e779dd3785cdfce1cbe588dc7371935d79b9a724efadda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9165219f5be52430e5f42d018b69bdb676dbf406d03a5a44b94a0eaae5874e0`

```dockerfile
```

-	Layers:
	-	`sha256:2bba8534637e2a1c207c7550eff95065760ee9e518aa83606bd8fdbbb36980fc`  
		Last Modified: Wed, 21 Oct 2026 01:27:30 GMT  
		Size: 4.3 MB (4256982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d57e718ccd1e39e680231f84c126f15aa3610f6cde341c0226f8f94fc548cbc`  
		Last Modified: Wed, 21 Oct 2026 01:27:29 GMT  
		Size: 19.8 KB (19822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:9740dd568b32da5990fc7d9188806004251cd70d6e9e0e59a290060f22169472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (170965172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5927f2b7a72b897d97ba4d88b658871c1beb99a653c79b28607f9a919c508206`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:05:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:05:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:05:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:05:30 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 05:05:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 05:05:30 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:09:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 05:09:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 05:09:37 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 05:09:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 06:17:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:17:25 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:17:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1c5845314da8e226dc3a22aca7de15561d086b538c43c929f5ee27a4b09b48`  
		Last Modified: Sat, 17 Oct 2026 05:11:25 GMT  
		Size: 91.3 MB (91256239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92493b16a739a3f8efc06add5745576246ef27d42ca9d2d674ee3f6b2595d184`  
		Last Modified: Sat, 17 Oct 2026 05:11:22 GMT  
		Size: 22.8 MB (22830527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04dcbd7d0b095b8d1be54a6f90eb7b68ce5738281004afad3c9868a22412dcb9`  
		Last Modified: Sat, 17 Oct 2026 05:11:21 GMT  
		Size: 4.5 MB (4515238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3429dc79ecf17800935bc7a512ce51be64de51ea85126a11e23d5aa18c4dd325`  
		Last Modified: Sat, 17 Oct 2026 06:18:14 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a73a5bcc6dfced58b72bceff33b0e40b2b60d96f05b7079e0ed3f0d6d0f5c352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4263511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:530613b10b3054f4752c2f851e813124ede366c887256fe0910d7f35a3f4b6dc`

```dockerfile
```

-	Layers:
	-	`sha256:e47e2f7eea880ee25fafd6502b3daeec6999a0c964496643b7ccc5bfc505c57b`  
		Last Modified: Sat, 17 Oct 2026 06:18:14 GMT  
		Size: 4.2 MB (4243802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de7b9548041cfe227d70681d40940a15b2b5a2cc4376dfea17daffcc10dd42ef`  
		Last Modified: Sat, 17 Oct 2026 06:18:14 GMT  
		Size: 19.7 KB (19709 bytes)  
		MIME: application/vnd.in-toto+json
