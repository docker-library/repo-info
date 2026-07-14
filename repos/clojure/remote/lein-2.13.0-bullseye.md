## `clojure:lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:1f6b8fc451ceddb4977cab23e05ea227fa54212c41d9d7c55c1c618d0529c0c5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:27db3c64f456219783d2f434cf39a6e1174efc3ddbbcd1fe580868726dbe8713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167807100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389f1447ac92f3d9ecb7df5347e9d26ace9a12516053aa1b221ca8aa6e2d2f31`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:21:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:21:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:21:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:21:19 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:21:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:21:19 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:22:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:22:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:22:24 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:22:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:22:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:22:26 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:22:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f749f4591f494c15438d4f5e7d01e6bd8a171dbbf5a21eedf7a9a1d7eb3728c`  
		Last Modified: Tue, 14 Jul 2026 02:22:46 GMT  
		Size: 92.6 MB (92574566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c70ba15e1172b8ec718d015c53202dfe04fd6fbe62c477f0ef0a626c2569b010`  
		Last Modified: Tue, 14 Jul 2026 02:22:43 GMT  
		Size: 16.9 MB (16940306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac37787124c09e58440535c895c5f91e1daf468f0dff9a5547c7ae05af1a8091`  
		Last Modified: Tue, 14 Jul 2026 02:22:43 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566db618c89862c3bcbe2599ea31815cece362ec1a7fb79f6f8f20d75f238614`  
		Last Modified: Tue, 14 Jul 2026 02:22:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:a3fab30dc17a4cc6d72aae50af759727406daaea9d9f74327dcdf6a60175abd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4487436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2571125ab8be0ce685e2bcc3c372e5b45a9d8b1ba688e60743623b1553369ee5`

```dockerfile
```

-	Layers:
	-	`sha256:3953ffa7ee7e0d6d35296397c9b292ea91f751872ccf84733cd0751f0ad387e9`  
		Last Modified: Tue, 14 Jul 2026 02:22:42 GMT  
		Size: 4.5 MB (4469063 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc59e03b0c27183db7a15d0c5b478d3d091487474f17d49414879e603c2bac0f`  
		Last Modified: Tue, 14 Jul 2026 02:22:41 GMT  
		Size: 18.4 KB (18373 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b622fc6e403f7a6a53f255234884d83f8202257429da2a759f1006485de24f58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165246440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d5a316c9d3fc089a6c5f51895fa61e5777c39b55dcd355913871f81e8b10b87`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:28:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:28:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:28:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:28:59 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:28:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:28:59 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:30:07 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:30:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:30:07 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:30:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:30:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:30:08 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:30:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bd62d741b3ad69796d25a89cda01124478a42a5e3de7d1b25de08b3715cd8e7`  
		Last Modified: Tue, 14 Jul 2026 02:30:28 GMT  
		Size: 91.5 MB (91542253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32755e213bfc9aa132e2c006f6c1fafa75e383f827efbb3a607e9d296b36069e`  
		Last Modified: Tue, 14 Jul 2026 02:30:26 GMT  
		Size: 16.9 MB (16927699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4cdc417041d84d4d8972e17f2282ec9f56b7c1fe79b33b5f93f6a6907ad061`  
		Last Modified: Tue, 14 Jul 2026 02:30:26 GMT  
		Size: 4.5 MB (4515169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df46b9041576005a3be29b65cb4458b6485ba06982a1d6824a8a5780b3a945df`  
		Last Modified: Tue, 14 Jul 2026 02:30:26 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:cecfd867ead91f7f6156ada1494a0b6f1487a80ca4bc0196954fa7b72a7dd430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4486575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c400a609f42889d71f76a4e3afe30eb8bcb699aae548edbe7487a235d8740b1b`

```dockerfile
```

-	Layers:
	-	`sha256:bb93886d1fe85bc685c4fdf8c2e58bc2d07bd8bad34597710cdcc9b3c12fe560`  
		Last Modified: Tue, 14 Jul 2026 02:30:26 GMT  
		Size: 4.5 MB (4468058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c5c30452bc451aa08ca874438f2d6b649328e8838546c0e2ebffa4c6d7c24b3`  
		Last Modified: Tue, 14 Jul 2026 02:30:25 GMT  
		Size: 18.5 KB (18517 bytes)  
		MIME: application/vnd.in-toto+json
