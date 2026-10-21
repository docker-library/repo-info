## `clojure:lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:f1766b92d468b462ebf56f4663aa5e860690d94932f89ea966ebb660d98462da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-2.13.0-bookworm` - linux; amd64

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

### `clojure:lein-2.13.0-bookworm` - unknown; unknown

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

### `clojure:lein-2.13.0-bookworm` - linux; arm64 variant v8

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

### `clojure:lein-2.13.0-bookworm` - unknown; unknown

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

### `clojure:lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:1f79c462cbd9a7a8d9f4c53bf7d0e2584cb6e0fefef839af6fa62f0eb7e02d50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168493919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cd7329a59c1612486d5326f905aa0d80cb25dabc7ab300e3228df828cdca2e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 09:51:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:51:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:51:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:51:00 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 09:51:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 09:51:01 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 09:55:36 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 09:55:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 09:55:36 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 09:55:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:49:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:49:39 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:49:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2764aa49be37d3934d851e7657fbfa8c5c1f6c88c2432b9e2d08519d852a28b9`  
		Last Modified: Wed, 21 Oct 2026 09:57:50 GMT  
		Size: 91.3 MB (91256225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc90b79b7cf8f646cb60704370621d4e6ce3d4b73b5ce8f4b44070cbabd069e0`  
		Last Modified: Wed, 21 Oct 2026 09:57:47 GMT  
		Size: 20.4 MB (20357273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1473b2828e734313a198c97ddc9d5bc4da1c6f0cafbd922a2ee680a6eb635127`  
		Last Modified: Wed, 21 Oct 2026 09:57:46 GMT  
		Size: 4.5 MB (4515249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e87b1bf207f43d894cb612d31a42ad69af591a5d5513518f107e26a4316ff975`  
		Last Modified: Wed, 21 Oct 2026 10:50:11 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:44f7bf11e8c349bf56b66716bbe65d90654692c425e36674db3dfab9471da18a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4262215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd51b9eaa80a8a8555f05284eb9396dbf3337a334e392d1be726b99f7a1a56e5`

```dockerfile
```

-	Layers:
	-	`sha256:3ee8499c6d107905b459a88e389fed57d821e0461f8fe8b0c256b261deba16ef`  
		Last Modified: Wed, 21 Oct 2026 10:50:11 GMT  
		Size: 4.2 MB (4242507 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85c58a584af9dc27fe7c1eb4f90b739a5e6eb07a3f2d73ecc8ad3459cf4e5b88`  
		Last Modified: Wed, 21 Oct 2026 10:50:11 GMT  
		Size: 19.7 KB (19708 bytes)  
		MIME: application/vnd.in-toto+json
