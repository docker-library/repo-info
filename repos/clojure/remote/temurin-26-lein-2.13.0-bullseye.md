## `clojure:temurin-26-lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:e7fd5dd8b85bc480489fc429d56029b9ce5f13282c640d6548cc3752645cee7a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:02ff7f06540e70696ccf0af1b4e4a023da3954ed7e5ee6bee09ebfacfd14ebbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169797432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f1abbd408a7fe3d7829493c5bd734878eed25dd78da6b7440f89456f8e4018`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:32:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:32:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:32:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:32:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:32:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:32:28 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:33:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:33:39 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:33:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:33:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6038cabe2e8ca9bb8a6cf7941cc8797c6f7df0bfd242428a89c418db700108`  
		Last Modified: Tue, 25 Aug 2026 01:34:00 GMT  
		Size: 94.6 MB (94563753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d367d07bdb3ecfb173039b561deafb822b0aff89b8005aa358a4a0be99814dcc`  
		Last Modified: Tue, 25 Aug 2026 01:33:58 GMT  
		Size: 16.9 MB (16940681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ef7e8be42099ad703b1ec7b8afb29954e5bcfbcdf367859631c870381de657`  
		Last Modified: Tue, 25 Aug 2026 01:33:58 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77c8aab543cb8aff6e3c07fcf086fc288148c3dc728226e1041b7c7a5354522`  
		Last Modified: Tue, 25 Aug 2026 01:33:58 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:c87f0ea4c3c06126821ea511b8d0aff9eb729a2cd9dd4585a07ff595381cc29f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4488854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36872f08c5258e108ee407dfa66f047253daaeeb101ab51c7d5777019f6ba675`

```dockerfile
```

-	Layers:
	-	`sha256:85ecf07c139446814e22f410d5f047aeac807ae702ab423ec4f2f5aa2a4f5f6e`  
		Last Modified: Tue, 25 Aug 2026 01:33:58 GMT  
		Size: 4.5 MB (4471123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2077d4783e43f61f7dcff624bcf2e524ae325c84a6f508412f4a2b896a43933e`  
		Last Modified: Tue, 25 Aug 2026 01:33:57 GMT  
		Size: 17.7 KB (17731 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f27ec0ffaa37bfc5e33f7953f09134286cff012df3c581bfda661bf7e1d4d43e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167248850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da777f1dd4a9207c76b9a5f373cbd11b8c1f9bfb3a1db1c9e133827e56fa21cb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:36:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:36:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:36:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:36:59 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:36:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:36:59 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:38:10 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:38:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:38:10 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:38:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:38:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:38:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:38:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc6034befb518be826c4ebf7600d36cfb5b322b02217d469acdff8b68777a9e`  
		Last Modified: Tue, 25 Aug 2026 01:38:32 GMT  
		Size: 93.5 MB (93541521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e57a69d087684339cf309490d3954281e6c1ef99e9e4a4518131dc445e40de`  
		Last Modified: Tue, 25 Aug 2026 01:38:30 GMT  
		Size: 16.9 MB (16930393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29494ecaa430e87dfd789bce4853b68c97205fd4c26ff2ff598326867fe725ae`  
		Last Modified: Tue, 25 Aug 2026 01:38:29 GMT  
		Size: 4.5 MB (4515163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab57b42bf523fce9e6642b74f06e0b89ae385700bb030c49c076a82197e60fe`  
		Last Modified: Tue, 25 Aug 2026 01:38:29 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:bc9ba008b151f0e5a68fdc1c93bb6ea24c9e435acd6d85f9dab7ad39d4c325ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4487946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dbd0c610b2203875a6d0e3c1e9a0ea0cbfc9a4740903ded636ef09f661fa67`

```dockerfile
```

-	Layers:
	-	`sha256:6256e0c5b03914a928d7e279a1fc221f21aff67aebc3213cbe6d28ff9377ec21`  
		Last Modified: Tue, 25 Aug 2026 01:38:29 GMT  
		Size: 4.5 MB (4470094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1b95e6f65d7d7201f3f3d0caa1fcfd7507723caff0d9503d09a5419416d8fc5`  
		Last Modified: Tue, 25 Aug 2026 01:38:29 GMT  
		Size: 17.9 KB (17852 bytes)  
		MIME: application/vnd.in-toto+json
