## `clojure:temurin-17-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:d80dc65c11ba59ef7b96b751662c91e1ddca852ebc7161e74289cfce69269863
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:530fdb2ddd7706c72f5874a914cba2ce8bc169fe25d14637fc64920493cb43fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196326258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:204fab1927ae2c9147894ba8c6eb8f7153940a357d95f355ea1d4b5179c8cb3d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:18:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:18:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:18:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:18:22 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:18:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:18:22 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:19:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:19:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:19:26 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:19:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:19:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:19:28 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:19:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d301dc1272e36359e03d650038d8553e969375f35bb2b44fd9246eab268355b`  
		Last Modified: Tue, 14 Jul 2026 02:19:47 GMT  
		Size: 145.9 MB (145906288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153bb285cc7dda27cca7a8972294e6c8ff26c433e5f881b9be01481e6c7a78c0`  
		Last Modified: Tue, 14 Jul 2026 02:19:45 GMT  
		Size: 15.6 MB (15644565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a550ab2e80b0993793769e49ecfe1fa3fa1dbc0c506c1e3d8e698ecfd5c2b252`  
		Last Modified: Tue, 14 Jul 2026 02:19:44 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c299067ac5c0084a4ecbc3d286f28bb2fe2763ff261d3c9aa7f2b6a02ce19a5d`  
		Last Modified: Tue, 14 Jul 2026 02:19:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:14832f2e532dec263c760cd6ea79499becd7025fef8bae9cc44fdcdd5fbad979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3054885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4e70cf6c6777490496aa1f083cf5548d56eb893160780fb2ef91e31c0f2796b`

```dockerfile
```

-	Layers:
	-	`sha256:2ec37302e3ba14c2f8b3773ad3dd4131ea89c777aab5707dd946ef737fa96f0b`  
		Last Modified: Tue, 14 Jul 2026 02:19:44 GMT  
		Size: 3.0 MB (3037112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32a3a2ec57ef3af81b4c40937db5d0bb7d7083f06caece005cd81822feb5a769`  
		Last Modified: Tue, 14 Jul 2026 02:19:44 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:50a1b1615da0d93c7b776fc53f0b053aabae859bafa24e6df4fd7835dc567e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193621002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91da439c3bea10601ce10b5dd50c2ba1f0fad64b75af074c1aaea29846eb8e16`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:25:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:25:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:25:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:25:31 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:25:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:25:31 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:26:38 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:26:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:26:38 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:26:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:26:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:26:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:26:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53f00ad2639dca946a82fcf4fda285b4e189a4b445373f8a1b5bd4e7b87f3fb`  
		Last Modified: Tue, 14 Jul 2026 02:27:00 GMT  
		Size: 144.7 MB (144724328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c865a3fcd5fc281ebeadc8f376b84db6d1479fcaef438ee9268be929e6139ea5`  
		Last Modified: Tue, 14 Jul 2026 02:26:57 GMT  
		Size: 15.6 MB (15632039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8a8f0602d2e429661c0595addda2df767df87f8170fe9db5636e020f160d081`  
		Last Modified: Tue, 14 Jul 2026 02:26:57 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a80d56363c0a647459ebe50eda5ec4379d40db1ae372722a4a79060eb48e81a`  
		Last Modified: Tue, 14 Jul 2026 02:26:56 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:aaa2b923fd405d5cb02f46a8c4f0044730a6713bd0bc5dd1df00fb4782e64821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3054615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f866b473ff19f9695c605f87e8e7072e91f334b909f9e1dae07c1f94ce56d7ba`

```dockerfile
```

-	Layers:
	-	`sha256:b1fe3ee608d6035bf70371796cf094f08d118dafba808661a7b00423a88976c3`  
		Last Modified: Tue, 14 Jul 2026 02:26:57 GMT  
		Size: 3.0 MB (3036721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e1fc82aec3ad13a665cc4e5ed41f0269e69aa7f93ea89f8399f21f73f822773`  
		Last Modified: Tue, 14 Jul 2026 02:26:56 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json
