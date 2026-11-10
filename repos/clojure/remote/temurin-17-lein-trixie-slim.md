## `clojure:temurin-17-lein-trixie-slim`

```console
$ docker pull clojure@sha256:ff2cee71e4028b33ea456ddc66d345c5fe0f2e4c8edf7fbc7f26716e77238e56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3e43a08d9ddf5b15aac823b7dfcfa25ed3f3c3bcc3f0102e519e8af4a0715499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 MB (197199552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6620c751055787efccbc8509432af0a888eace369da35dd6781bfa9f33b902`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:38:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:38:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:38:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:38:12 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:38:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:38:12 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:39:24 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:39:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:39:24 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:39:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:39:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:39:26 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:39:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4eb2b5eb27f0047a382d8f46e50232c9b0382daf3959ce6e59c74d70fe4336f`  
		Last Modified: Tue, 10 Nov 2026 00:39:45 GMT  
		Size: 146.1 MB (146086141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ec1f1681835d3c5366fb7d09f1e1ad248b1fd75aba7ef52f8203eecb03b7852`  
		Last Modified: Tue, 10 Nov 2026 00:39:42 GMT  
		Size: 16.7 MB (16741135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebad7cf2e36e5c033605f63455eb5a53702d77b3e0d0dc9886e464c976c24ba8`  
		Last Modified: Tue, 10 Nov 2026 00:39:42 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d24db5fa5c5ddd8b523adadde0b3afb74c3c96e808f536bb1d7e30688c5a5d1`  
		Last Modified: Tue, 10 Nov 2026 00:39:42 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7b1696121ded5bc4fa02d123df7f9238044dd71437f5678eb8fc19cebd585caf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28ce28cbd59e537227acebef8507252c2a3b0f2d26e0b4a5c263326817cd814`

```dockerfile
```

-	Layers:
	-	`sha256:3ec03d7bb48d3103176ba4f46ab63ecda0afb64a6f8e6683bb79ed9f94d6e9b5`  
		Last Modified: Tue, 10 Nov 2026 00:39:42 GMT  
		Size: 2.4 MB (2371746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cbda8cb88f9fa97ee01f8e105c4b97938bafdfe6462e4fcded32ae74e7e5441`  
		Last Modified: Tue, 10 Nov 2026 00:39:42 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e07d03fac6b0c449fa4463fe6e8a39ebd160cbc8038e9c1e0bc3ad99af0e566f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196395073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5545d9388f4f4ed7c4de2a0c59455a56c93b1e1716e6a6160525a9fe72d1d22`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:37:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:37:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:37:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:37:25 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:37:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:37:25 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:38:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:38:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:38:42 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:38:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:38:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:38:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:38:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:217e40b8eab181c5de867dbf52d2b9488ff07d025f1ba86c3f5ca2aa26ad3702`  
		Last Modified: Tue, 10 Nov 2026 00:39:21 GMT  
		Size: 145.0 MB (144957182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b736d16bc92f1d292445d9cd96ca69b97a8f63d7025b1c506259e6a07e59c5`  
		Last Modified: Tue, 10 Nov 2026 00:39:16 GMT  
		Size: 16.7 MB (16707753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:786e303aa6dd73336c3d18204ff90e8783a1d4d2bdf04f0a90893d942bdc2f6a`  
		Last Modified: Tue, 10 Nov 2026 00:39:13 GMT  
		Size: 4.5 MB (4515170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a32f8c8afd0212db0926fc433a7313b44cf6ba45eff0604a17522145d4027f`  
		Last Modified: Tue, 10 Nov 2026 00:39:06 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:26ca3a3673c9520d5865d8da3ccdc3b2ca13e098e1aebdff565e25d32fa19cc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9913f85567a0ce5ebee1006b230bc82457fcb851627e3ab1c2e922e0578cee7a`

```dockerfile
```

-	Layers:
	-	`sha256:d92f4844c2e4471be44a7457292e5681d938efaebf8943ebdac344480de2bb1f`  
		Last Modified: Tue, 10 Nov 2026 00:39:06 GMT  
		Size: 2.4 MB (2371356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e4085fec71d04f065d39d2c9f5e62362f0f50c656cd660b926659191533bfd9`  
		Last Modified: Tue, 10 Nov 2026 00:39:01 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b74f509b0d70a33b39b3d0121c9f6e22ce9dd053eff1fe4ffda94fcb79d83352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199822956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7193056522e15a8dca04d381594a5bbad4cdf820d704ae274d0b20cd0271e447`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:41:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:41:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:41:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:41:35 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:41:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:41:36 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:46:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:46:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:46:19 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:46:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:31:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:31:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:31:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199bd1f0ba598dc223d976f04d012aa541bc41ffc8647af3bd3d9ec8c396327c`  
		Last Modified: Thu, 05 Nov 2026 15:47:01 GMT  
		Size: 144.9 MB (144860487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5614a55605260eadcf8fa5bad9bcabe42257ad34068e6a2ac242ab53342b2661`  
		Last Modified: Thu, 05 Nov 2026 15:46:59 GMT  
		Size: 16.8 MB (16778657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e114eb891e276f4a957799ab45dd99fc8e5795d371d6d6022c191c7991a3b3be`  
		Last Modified: Thu, 05 Nov 2026 15:46:58 GMT  
		Size: 4.5 MB (4515235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed76ef9e7ec03bc5e54d6a08b0055566fcde5f46401ee9e4aee315b492fe1820`  
		Last Modified: Tue, 10 Nov 2026 02:31:50 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5b0be25443cb1162a7ae90f9152ec28458bca487c59b49a927d82ad9beddb2a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2388322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5d2ab4fcf2974b085e6cb7e4b1486b882196603cc1b0ab1352497f79572b22`

```dockerfile
```

-	Layers:
	-	`sha256:bd375f3d97d02061b672b24dc6e2d183b993f5e67163012aabb2f58380cbdcb7`  
		Last Modified: Tue, 10 Nov 2026 02:31:50 GMT  
		Size: 2.4 MB (2371480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e624bc71502f4ae38c219a8d1b106dcb3243727a8e9e4646615b164ec384e22`  
		Last Modified: Tue, 10 Nov 2026 02:31:50 GMT  
		Size: 16.8 KB (16842 bytes)  
		MIME: application/vnd.in-toto+json
