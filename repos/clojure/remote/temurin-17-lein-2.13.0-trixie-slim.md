## `clojure:temurin-17-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:bba84b4317156d450e6c01463caff3e96eaac1e4deac516cd7a56ec7a1259941
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
$ docker pull clojure@sha256:9117afd20876ac5ad99324ce1e34a8885fa615d96d72df30163a878c25417c0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199896167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25233579c00a2dbdb5729fb711de9b9826aaba7d0c6c51b6ac4d5f0f9eaab975`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:45:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:45:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:45:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:45:27 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:45:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:45:27 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:46:46 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:46:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:46:46 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:46:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:46:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:46:47 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:46:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f3a7cd3735abbddc72a1b28bea4ca55601420bde357d25788ef36a9759205c4`  
		Last Modified: Fri, 02 Oct 2026 02:47:10 GMT  
		Size: 145.8 MB (145825477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52991faf24b524eee2a8eaa7fd638461d53883255cb3205e393275561d3ef7ce`  
		Last Modified: Fri, 02 Oct 2026 02:47:07 GMT  
		Size: 19.7 MB (19724662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f890a08240326b62fd1d7fd351c7e388b752a5478cd36161d0d4b138927ec911`  
		Last Modified: Fri, 02 Oct 2026 02:47:07 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82faf06435c787e541e8d8181f6606a969b3b86e724882f2f634757f5d60caab`  
		Last Modified: Fri, 02 Oct 2026 02:47:06 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d9dac8a4c96274ea9bdbdcf560a14622d4a6c63423644cf3482e09127e1e0c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebbadef66361f50137235e86dcbfb7d6f79218fc2b4e4e9b85e9734b24c2156e`

```dockerfile
```

-	Layers:
	-	`sha256:bb63ca318295854850c78a73e1b64762b7cffdd6049646000c4981deba5358aa`  
		Last Modified: Fri, 02 Oct 2026 02:47:06 GMT  
		Size: 2.4 MB (2373031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42765867c20f1e68180d41a7b60fdf34f448790bc0cfe8bec4f79538a6faffe5`  
		Last Modified: Fri, 02 Oct 2026 02:47:06 GMT  
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
$ docker pull clojure@sha256:3a9a83cef48d15626f259b814bbfe0e467690acb0e6c65f3cfb44ba97056171a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 MB (203819459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4deefa3e9a85ec075b7d3534d29171131af01bd168be761a42066418b67c75d1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 08:05:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 08:05:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 08:05:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 08:05:03 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 08:05:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 08:05:03 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 08:08:25 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 08:08:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 08:08:25 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 08:08:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 08:08:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 08:08:29 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 08:08:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8868ab06d01f323b065e0d63a97290611e51fa6952f13485dcb296d59b39402b`  
		Last Modified: Fri, 02 Oct 2026 08:09:16 GMT  
		Size: 145.7 MB (145671489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5d1ec3e3d108f484c297a562e7a50cb4bb58d0e401464c8b20bd8d655bf7e8`  
		Last Modified: Fri, 02 Oct 2026 08:09:13 GMT  
		Size: 20.0 MB (19991074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5c90cf9e2530541ed60c965a71ff4693898e3bbe7fad7005da7759b69cb9c3`  
		Last Modified: Fri, 02 Oct 2026 08:09:12 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094c8d39ae006b530b58468dfb9435148f647dfd6fd669003feb79b8d0e7a637`  
		Last Modified: Fri, 02 Oct 2026 08:09:11 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b1b7d8de5bf6dcce647311e44515b02734695574ce8a6c2c8336b0dbb4c4af4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3625bc506c03b7d2e7253a6cf5a5ea7f44c55ac9d6220570966e18f77a5221bc`

```dockerfile
```

-	Layers:
	-	`sha256:784e9f380a3451cab6bc8ef7c519ed38a739e21cd4140941ec1d411480b8e7e9`  
		Last Modified: Fri, 02 Oct 2026 08:09:11 GMT  
		Size: 2.4 MB (2374011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da1360d6c6cffbdd1834ee2643be38b848e251d3920f7d86ed732156287fc6e4`  
		Last Modified: Fri, 02 Oct 2026 08:09:11 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json
