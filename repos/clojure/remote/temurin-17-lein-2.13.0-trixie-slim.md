## `clojure:temurin-17-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:0bd788ff3e36bdce9ea8b04cb359f831a388ae7fc73a196e2a7ed9e56a40b495
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4538d99590f942f2c4a1c8df1f97022b199753405529379447858789c14b6436
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196928014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8264e31a8f13726c39db1de734df1234718e8c4cd9a00ed3957a413c0f926c8c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Thu, 08 Oct 2026 20:11:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 08 Oct 2026 20:11:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 08 Oct 2026 20:11:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 20:11:03 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 08 Oct 2026 20:11:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 08 Oct 2026 20:11:03 GMT
WORKDIR /tmp
# Thu, 08 Oct 2026 20:12:25 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 08 Oct 2026 20:12:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 08 Oct 2026 20:12:25 GMT
ENV LEIN_ROOT=1
# Thu, 08 Oct 2026 20:12:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 08 Oct 2026 20:12:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 08 Oct 2026 20:12:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 08 Oct 2026 20:12:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f69685092901b9d34e8101dec524ad1352b8a381350710425dfd8a732fddff3`  
		Last Modified: Thu, 08 Oct 2026 20:12:47 GMT  
		Size: 145.8 MB (145825469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6165c2472ecb06ca12841b79a9e811970d04f8f1c8c52d150196c3e19aa9f2f`  
		Last Modified: Thu, 08 Oct 2026 20:12:44 GMT  
		Size: 16.7 MB (16743553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:527d20d53fb082fdd18a20d966b0b6b8fb14be23f8dcb67ef9d1bf80eaf382b8`  
		Last Modified: Thu, 08 Oct 2026 20:12:44 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d009393dcb57436472e82ac3b454267b605193d99195ad904e5b8f7f0d279763`  
		Last Modified: Thu, 08 Oct 2026 20:12:43 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c3dc4755e3eb5651f6eedeffe2cb6455b3d51e4843832dda3c9e5e7b45856772
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368dbc3fc02b8249c4b0d274ef24611e69cf2c2450a40f30179990d7f792c5bb`

```dockerfile
```

-	Layers:
	-	`sha256:1b94fdd87ff0814d5e24bbe8a22bb6b6fa9b7eb97dce49a8193d639a77edfd03`  
		Last Modified: Thu, 08 Oct 2026 20:12:43 GMT  
		Size: 2.4 MB (2373031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a2a01ae530ae20f237812b82329b8f06d81286b18aedac7365e9ba6ce69de05`  
		Last Modified: Thu, 08 Oct 2026 20:12:43 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b0868ecc32a0c320f61bc5fe550db22c6cbde96f513d496cc73bea33e0610514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.4 MB (199399097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acfbf0ba4f2fc8566a440d576214af127d17a6eb07d6181e125c6b4a5df86416`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:45:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:45:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:45:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:45:09 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:45:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:45:09 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:46:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:46:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:46:28 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:46:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:46:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:46:30 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:46:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd915bfc0a43c9b4b267292d80225c667bfcdc73190c37c88601dfed0079c7ed`  
		Last Modified: Fri, 02 Oct 2026 02:46:52 GMT  
		Size: 144.6 MB (144648265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e4d1fc3998e00304487f308944d652f2f592a3128959d06009be9443e8afb6a`  
		Last Modified: Fri, 02 Oct 2026 02:46:49 GMT  
		Size: 20.0 MB (20045510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9044c8d8f9b6b23f684201ac1d2bbb6c5f5c4fc66c44ce3b8218fde0afaff8`  
		Last Modified: Fri, 02 Oct 2026 02:46:49 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167ee5f71c188b585e59137598ff20616c5b2cab1f9a6089409bca8c5b948bcc`  
		Last Modified: Fri, 02 Oct 2026 02:46:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3b040240c0a1729ffc23742504ce5168ef2b8afe25d543821727b4599a507155
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d1110844baaab655537dadd865de75fb02275f93a58353797bc3fbc7ae797cb`

```dockerfile
```

-	Layers:
	-	`sha256:966a999a423c3c4028dadb2571bb2b3f620b160fed4da5312b5546879fbfce22`  
		Last Modified: Fri, 02 Oct 2026 02:46:49 GMT  
		Size: 2.4 MB (2372641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c8e78d3bce2c7feaaa47f491a0ef1e7636d807ed2ded6fb3dbf0eda0f9e4cc3`  
		Last Modified: Fri, 02 Oct 2026 02:46:48 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:47094e83451be7f88d06678180e1080130cfc77806b14e58fc071dd8b142fd96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200622067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dfb7044ccd09c6dc7aa3a66e3b396ef78fee86117980327bc3ba441cafd48a8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:06:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:06:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:06:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:06:34 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:06:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:06:35 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:11:01 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:11:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:11:01 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:11:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:11:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:11:07 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:11:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20d3a530543616739863ab002993c8390b6080b2300d6388c6232bfa2803db7`  
		Last Modified: Tue, 06 Oct 2026 10:12:01 GMT  
		Size: 145.7 MB (145671564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7c527e9a97faa9f0c5b07c48e21f4a9341bec10c25894650d0b9d86e721a61`  
		Last Modified: Tue, 06 Oct 2026 10:11:58 GMT  
		Size: 16.8 MB (16783241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759c291e2d126ec637754a04b8153615dde449c460e046cd417831a62b5b6ba`  
		Last Modified: Tue, 06 Oct 2026 10:11:57 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:132d5a75a4874df54874c80acadfe3e732acd9e2f4cb2edd54f4b2939595084e`  
		Last Modified: Tue, 06 Oct 2026 10:11:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e92b900670b56780b9862791601c78b597a652555c0201497fcd8d3ad9591dc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:875a82c4363d0832f505f5fc14f650eabffb49684402136f4aaa58f0f68bc3cf`

```dockerfile
```

-	Layers:
	-	`sha256:41ed9f312053b245637bcb6e535e963a3729261c94724aee65d42ad0ecf4b915`  
		Last Modified: Tue, 06 Oct 2026 10:11:57 GMT  
		Size: 2.4 MB (2374011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36ca428626eee07d856d8653d715341664dbd676476e4c2ff78602d082db511e`  
		Last Modified: Tue, 06 Oct 2026 10:11:57 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json
