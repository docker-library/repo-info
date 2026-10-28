## `clojure:latest`

```console
$ docker pull clojure@sha256:10aca7acedf286d64d8abd9172735b1ebf0f4a099fa05a752d516b18866abd33
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:d0de0f6b94b1986725ec654ffdc8132ee392bbc443c0b6d2ede45f844b65a66b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237879411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77266d7799a634edb240c03186bcbe506f0e2063b7a0a7a2176c4f34018cb067`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:08:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:50 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:08:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:08:50 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:10:04 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:10:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:10:04 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:10:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:10:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:10:06 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:10:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:10:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:10:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:10:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:10:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33be771a080fee9b5b2aa764caed55ef32ea2e32aa9946dc881300a8eb9f2e08`  
		Last Modified: Wed, 28 Oct 2026 02:10:43 GMT  
		Size: 92.6 MB (92618078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f131b8079981c1fbc69eb7327670c8957f528d94f0900c6e48ddebc0961c9ba`  
		Last Modified: Wed, 28 Oct 2026 02:10:40 GMT  
		Size: 20.1 MB (20132739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0517cf6d7ebfa3830de12fb9d6859005c8aeab46c4c26a8ebb124271cae3537a`  
		Last Modified: Wed, 28 Oct 2026 02:10:40 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b16c4a34154f5604e3e79aca2d6dd2e6cc496ddce160755197c79d0eba64023`  
		Last Modified: Wed, 28 Oct 2026 02:10:43 GMT  
		Size: 72.1 MB (72087753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb7b6fc0162303e4b715b4dfdb697e2eb40b9db81d44f860f53a01cd6d295d0`  
		Last Modified: Wed, 28 Oct 2026 02:10:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ad7690e965224f6fae4afe854173c0fbb8394f63dbacf652797d4cd894aab7`  
		Last Modified: Wed, 28 Oct 2026 02:10:42 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:4a74b1252f6549dcf62990eb07143a60f7f99527446f49324d693aa7824d4831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7464591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8fbf0240179d79970acb7886176bf421f5c9fc2d4149aefc6ece2e0409150f3`

```dockerfile
```

-	Layers:
	-	`sha256:b5faf050157ea15d3109e793cbca426b28d6a444afe233140ae61e0a2413ec53`  
		Last Modified: Wed, 28 Oct 2026 02:10:40 GMT  
		Size: 7.4 MB (7439617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9a11892a671c0ba792e769a0506ee62f5fdb9f293097970bbeee929bdea2b74`  
		Last Modified: Wed, 28 Oct 2026 02:10:39 GMT  
		Size: 25.0 KB (24974 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1597c237b5ce13605bacd1319687227e2f082b80a34cd9b45fd87a886f7a02cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236684472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fbe7f8415f14aa22a8e6b0f2557d27228301b1104940f2bcc93c17254929491`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:15:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:25 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:15:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:15:25 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:16:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:16:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:16:46 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:16:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:16:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:16:47 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:17:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:17:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:17:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:17:01 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:17:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a976de4671571253efcc6db2f3e8d64838bb9607fa1d8e8a84041149e93605`  
		Last Modified: Wed, 28 Oct 2026 02:17:24 GMT  
		Size: 91.5 MB (91528800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626427b8268cc6adf0d9f3643c0cc1c003104f9f0d29477867a802ff4c86a6a5`  
		Last Modified: Wed, 28 Oct 2026 02:17:21 GMT  
		Size: 20.0 MB (19976408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168babdaaec6ec8c80f84d7017f488ac392a41084197337b15f645eadf2e315c`  
		Last Modified: Wed, 28 Oct 2026 02:17:21 GMT  
		Size: 4.5 MB (4515173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96dfb931929c8b6c05d5d2b6159ad0e7d55fcfd53ab6150dd679d04874beb76`  
		Last Modified: Wed, 28 Oct 2026 02:17:24 GMT  
		Size: 72.3 MB (72257844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd4587d4cc6d414edd298ddeb4179001102ce671788922404c5c37c102fb697`  
		Last Modified: Wed, 28 Oct 2026 02:17:22 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebef823a7632e927816e43186f0ed47ee2f21d03b26c30a562db4743f71a458`  
		Last Modified: Wed, 28 Oct 2026 02:17:23 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:8c850bdb818710aff64b136432d13d0fc67bc875fd2942c9b458e6b3a28b7117
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7470451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53647e679fb5e4439a8a82ed4d2b71fc04ba9c72d1124f92129f1afa903ab831`

```dockerfile
```

-	Layers:
	-	`sha256:126dc6467c516a241e640b7880f883e8c57db43ddf6b6dfba15dac5fc230bcef`  
		Last Modified: Wed, 28 Oct 2026 02:17:21 GMT  
		Size: 7.4 MB (7445353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2ce6aea65c30668416de9dd8184fd2e72fdfe62f9cc6c3d0680a541814cadef`  
		Last Modified: Wed, 28 Oct 2026 02:17:20 GMT  
		Size: 25.1 KB (25098 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:7ac65c24cdbde88c38b1445d152719bb3d749d6da06f04bdb7341443baf38914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246204106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:124e6687a7bae7551b6f91795d565a98121c949b5430538807d8881b30921658`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Wed, 21 Oct 2026 09:55:43 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 09:55:44 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 09:56:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 09:56:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 09:56:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 09:56:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 09:56:47 GMT
CMD ["-M" "--repl"]
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
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbaa38d032d510bde24465d5ca1df238c9197c9a0270a9ef2c3f747d98ff1f6`  
		Last Modified: Wed, 21 Oct 2026 09:57:50 GMT  
		Size: 77.7 MB (77709539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7edcb0b81fddf2421007eac91feb3961b7a396f4c1526215e2628d56913eca0`  
		Last Modified: Wed, 21 Oct 2026 09:57:48 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98fc5ea909c7f0ccb3a4f3f9addafc1062f1ff4fd65ae1c51f8a379395148c54`  
		Last Modified: Wed, 21 Oct 2026 09:57:49 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:a2f1934df3c82592a6906ea047a7d6e4c53c5bc19e67f87b9c2e8a52c54b22cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7453922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b129f701f535f08f86e25f5a24448d28dbbfb0881b11e9ddb23ebf3d0535b8af`

```dockerfile
```

-	Layers:
	-	`sha256:58972e239a5c953608fd12e9fef51c5193e832d24af051bea044d65e4e660802`  
		Last Modified: Wed, 21 Oct 2026 09:57:47 GMT  
		Size: 7.4 MB (7428907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b61c2ef1b92cd59611fc718997853e0e0f41d963ffb2a9890c7a5824a71e9ff`  
		Last Modified: Wed, 21 Oct 2026 09:57:46 GMT  
		Size: 25.0 KB (25015 bytes)  
		MIME: application/vnd.in-toto+json
