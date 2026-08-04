## `clojure:temurin-26-lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:64c6965830e8a5a432ecc011eac0e5aa6f44c87819eea823aeee8475000fea60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:8cb8042d12ee7c191d5d5c49a940f5a70c2ffc48ad8fba3f6ac139f80c3b6270
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169756541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5de3c5c8b4eb2b5d850e26c89c1787f169883c8fff3ae6830461a9588bce9954`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:55:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:09 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:55:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:55:10 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:56:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:56:15 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:56:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:56:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:16 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a5198161875293ba36bc8040ad2cdb22b5f32794d527ada122510f89b1dc30`  
		Last Modified: Tue, 04 Aug 2026 02:56:35 GMT  
		Size: 94.5 MB (94524380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76124fd7f1fe867e578fdefc9ba84cc2ffa5cba5da4a96d11022014ed54d4999`  
		Last Modified: Tue, 04 Aug 2026 02:56:33 GMT  
		Size: 16.9 MB (16939949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdf2df33e75d3ee12d8e015888d796b1c952909dd055b210f6caa79ed92e1d0`  
		Last Modified: Tue, 04 Aug 2026 02:56:32 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323a17ce3131cd6f2687d1067d09d4aa4b7eae86517767c458f05e1bbceb76c7`  
		Last Modified: Tue, 04 Aug 2026 02:56:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:18ff64a60417f4ac0cbd25a624d9348b7c7f75ca4368ef5507b0b0526505ef23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4483648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a607c6fac3997aed67940dc5ac956b20bd9d69a323c6458e95e41844cd2249df`

```dockerfile
```

-	Layers:
	-	`sha256:be1bac011fd76c4dea9ed61f485ccb281949231ec5e77f8cc8b3994306e31637`  
		Last Modified: Tue, 04 Aug 2026 02:56:32 GMT  
		Size: 4.5 MB (4465918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4e97583328f283c0a00b14dc452bb4693cc0416690b8fbcf96ac49be0d0eb81`  
		Last Modified: Tue, 04 Aug 2026 02:56:32 GMT  
		Size: 17.7 KB (17730 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:02ef00c35263092c2ab6510aba1abda8c25ef5c7e4bc310d7a5f5b7283dc12bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167198821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2039294b535f60ba15e5f09492855ce32648e62b68c59113d435880665ab75f5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:55:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:49 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:55:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:55:49 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:57:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:57:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:57:30 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:57:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:57:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:57:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:57:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55b9a388ee8f266c18a480b8fc8da3ad6c55bf2a8b3c59783f5c1b3af2830c15`  
		Last Modified: Tue, 04 Aug 2026 02:57:21 GMT  
		Size: 93.5 MB (93504367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8f084f085b26e4cf40ece84e445f4f5ac15170766f225604cc609629187c11`  
		Last Modified: Tue, 04 Aug 2026 02:57:52 GMT  
		Size: 16.9 MB (16917959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a59116e1d2e67965246a458b561a26d6fc17967b844a7ef0c8425b3418383a`  
		Last Modified: Tue, 04 Aug 2026 02:57:52 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27da79666ec613f560473ba7f96041e8114656611b4b02bf2b89e3eacc6e8716`  
		Last Modified: Tue, 04 Aug 2026 02:57:51 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:8de59a798254f983eb929b985d1066f3ebc78c981a625985b8dec1e03da5f12e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4482741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c959b4dbb6eb62c4acedbad40b7ce54d34f5a7da6dff5653e6636725dff6e2`

```dockerfile
```

-	Layers:
	-	`sha256:ed488eaf70d22b47933d99b124e52076a829ba1e4de810917418d6b62a5182ab`  
		Last Modified: Tue, 04 Aug 2026 02:57:51 GMT  
		Size: 4.5 MB (4464889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15b053a4e5e27a6e79303d6601450603e3cffb52e50515317dd2953287084458`  
		Last Modified: Tue, 04 Aug 2026 02:57:51 GMT  
		Size: 17.9 KB (17852 bytes)  
		MIME: application/vnd.in-toto+json
