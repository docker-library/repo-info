## `clojure:temurin-17-lein-bullseye`

```console
$ docker pull clojure@sha256:5ba156c2d2c41971a0c0c9bfec9914b2b42e614c38b5d7addd99d08ae3f942fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:9478d5291f6857c908f99262e471119a0df12b99867c12df924b17b9e5d8c320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221134933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9520e6625410a8532dfc32a8aa40c246068fe32680562e57ba8b02660b8adf7d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:50:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:09 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:50:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:50:09 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:51:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:51:13 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:51:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:51:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:15 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c67cddb4b9fcdeefaf829aa012f0ccaefcfa862a558064326104b95b8849cd81`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 53.8 MB (53773009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e4fc5a84dc2837510d2ddce2457c2c0c32940a81c5d4cd9d9fb7431c2194a0`  
		Last Modified: Thu, 02 Jul 2026 05:51:37 GMT  
		Size: 145.9 MB (145906292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:005bd0dee97c90d227fc46fb6acef680c5b28c9619506f3ccc2c4c81318eec3d`  
		Last Modified: Thu, 02 Jul 2026 05:51:34 GMT  
		Size: 16.9 MB (16939985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3298fbb9121787ba7a906e414905d9c04d648fa1e626af7e559fd32aab2f6c8`  
		Last Modified: Thu, 02 Jul 2026 05:51:34 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081560b914a4354de9c2c84f5daa1af9219e5788ed8b6c331056449c8dafe8eb`  
		Last Modified: Thu, 02 Jul 2026 05:51:33 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:fa72ff72e6c94a609b5c745a8c85bd72f55beb207a0f440df66962da6c8e775e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4518765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afbd0f5d0d50ade20f527d9bd8d50b6a1eb414fd4d3777ce849b8b93d3c59ae4`

```dockerfile
```

-	Layers:
	-	`sha256:cc77291eceb9e7e77c9bbd9ed71d553bc24a41cafe1f12b7184c194a305e6310`  
		Last Modified: Thu, 02 Jul 2026 05:51:33 GMT  
		Size: 4.5 MB (4501027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:273eb53fbfa4d7e83ac96ec05d55148b683358793f057ffed5d7df1255da0251`  
		Last Modified: Thu, 02 Jul 2026 05:51:33 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d5ea8b9d8694d889933ffbc0a70342e0e903b5f27aa9723d7dbc6512d4965759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.4 MB (218415090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b40e1461e6708bace8b4ae9cd74cfd8c85951971ec191a4671a60870fe079d4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:50:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:35 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:50:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:50:35 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:51:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:51:44 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:51:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:51:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:46 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f3c71b1adaf03ae1174791c9e100a4bde907c10ebd3b41d7bff4f7b816a7bc`  
		Last Modified: Thu, 02 Jul 2026 05:52:06 GMT  
		Size: 144.7 MB (144724295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9638340a09842e9f35a50a942a98c152f8542b04746e663f1e1ff669a2a5d2d2`  
		Last Modified: Thu, 02 Jul 2026 05:52:05 GMT  
		Size: 16.9 MB (16917952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10cba80d27f9ddfd6ff560d40c4fa71297936f00ac573073f1969b8e6fc24f99`  
		Last Modified: Thu, 02 Jul 2026 05:52:05 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f36b9cac932f5a0513a34e3ce60d58953768bd987a2997d16476364d87eff9`  
		Last Modified: Thu, 02 Jul 2026 05:52:05 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:3156c6c5126b7e3a93b0f43bf7760475a2edc69da383260a65daef1ad921916b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4517859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2804ac30e77cb9d389715fbb46a2ea5d90cb019b3d31ff47de731264d377cc1b`

```dockerfile
```

-	Layers:
	-	`sha256:0133bdf51538bf136a252c9f46284dcbbea4270fcbfa6b508dc23fd5e24864b1`  
		Last Modified: Thu, 02 Jul 2026 05:52:05 GMT  
		Size: 4.5 MB (4500001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ea5e8c8766f46a185505a7234b022c2fa62019a233e55042a353a0514ee3ec9`  
		Last Modified: Thu, 02 Jul 2026 05:52:05 GMT  
		Size: 17.9 KB (17858 bytes)  
		MIME: application/vnd.in-toto+json
