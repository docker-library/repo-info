## `clojure:temurin-17-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:788854e0911f2f1dc6e0ecdabd906b9b04abb8819edae05127c529525da1b1fc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:58164ad356d14f30375c4c95fae5616844f3efb96bc703cb94f2765453bd3b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196325127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caf4e1d294ee72c8d8520f83dce78396eb7f1cffb8c759caf859236a71d532b7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:50:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:13 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:50:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:50:13 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:15 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:51:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:51:15 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:51:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:51:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4bd607848540d71558dbc260c5811cc5e120466777f4ddeb4c70a812919767c`  
		Last Modified: Thu, 02 Jul 2026 05:51:37 GMT  
		Size: 145.9 MB (145906308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae4cf4e6047e758443106bcc4d52167d348ca47e9bb250e274300206e73a523`  
		Last Modified: Thu, 02 Jul 2026 05:51:34 GMT  
		Size: 15.6 MB (15643720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d72f882f371f5ebfa1f9f47cf379b8a6a3586ffb20f17ccf87d2b6de6c403e`  
		Last Modified: Thu, 02 Jul 2026 05:51:34 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cac2b93420d95f27a7e664d94d1af00b71c7066d08911132d796fe5f41140b2`  
		Last Modified: Thu, 02 Jul 2026 05:51:33 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d5c9d8eea2eef211b92bbdd643b5a1b9dd4a9b65697f679b5a872012648165d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3054885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf93be179b45d1e4998b8ccc2e30cf5e7fdd66326a45be0f4415761489ab18c8`

```dockerfile
```

-	Layers:
	-	`sha256:1974e8d949918736223a349688957f0f183cb5f57161a00f60eee211cf965cfe`  
		Last Modified: Thu, 02 Jul 2026 05:51:34 GMT  
		Size: 3.0 MB (3037112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1afc13448f7761e3d6dee3b818afdeb765ebe075306b126da3c62715eb1a03e9`  
		Last Modified: Thu, 02 Jul 2026 05:51:33 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a010bac50ad32c4e95d5739aa16800958e2563eea123f043e86adce6c9b04f34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193606338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef04e6159fc40cc16ca4403c246cd8a691383aa0621d895ae15cdd19d70ec4c4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:50:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:36 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:50:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:50:37 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:44 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:51:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:51:44 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:51:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:51:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:46 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f3c71b1adaf03ae1174791c9e100a4bde907c10ebd3b41d7bff4f7b816a7bc`  
		Last Modified: Thu, 02 Jul 2026 05:52:06 GMT  
		Size: 144.7 MB (144724295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b3ee3876335df5b1f8c6c112023dadeaf5b6719671865351cfef93ce622c7d`  
		Last Modified: Thu, 02 Jul 2026 05:52:03 GMT  
		Size: 15.6 MB (15619519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c725cc6fb2e9109547d42f38941a032ff1941142329dbce8455f689c14d47199`  
		Last Modified: Thu, 02 Jul 2026 05:52:03 GMT  
		Size: 4.5 MB (4515168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2d0ba6cc025c7bd0c68ec8456e08feacdeddbec260f5691431a736e20c91d8`  
		Last Modified: Thu, 02 Jul 2026 05:52:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1f2f580cddd927992644207ec6a31392c5a52ea8588b193835ad92970fda236b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3054614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7c840a4095a25cc85e7074d9537c4f2d28842e7f42b1f818ca58217c1408f1`

```dockerfile
```

-	Layers:
	-	`sha256:0fd0141e55fcff4e3769f0e5d74884fe9e5a028464699fcc0d214d67ffd978c1`  
		Last Modified: Thu, 02 Jul 2026 05:52:03 GMT  
		Size: 3.0 MB (3036721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa889faec6c621f61b63e8dc8e8b39af3480d30259927170230c71e34610d629`  
		Last Modified: Thu, 02 Jul 2026 05:52:02 GMT  
		Size: 17.9 KB (17893 bytes)  
		MIME: application/vnd.in-toto+json
