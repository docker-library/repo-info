## `clojure:temurin-27-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:cb2efe2005323eac745a4aa039020066ee1c14dbce5016a05c0c007fa229825d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5026d775553db41a3da7399deb1324b4a7f1a73e29048c64acf1c1a122d17f21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144735587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d79426aa87b29c3f788e5dc47c7c13127642be6d5dd38c8303fdec8018ca54`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:11:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:11:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:11:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:11:48 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:11:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:11:48 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:12:57 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:12:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:12:57 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:12:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:12:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:12:59 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:12:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58740b719bcdda4c04b0f8ba6ff8afc44f128ab3deab9cf489c35e8d59cef099`  
		Last Modified: Thu, 05 Nov 2026 08:13:17 GMT  
		Size: 93.6 MB (93622509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9755162d69e1c95477043d37e020634c54739cc5a183d78ca1aa7910957460`  
		Last Modified: Thu, 05 Nov 2026 08:13:15 GMT  
		Size: 16.7 MB (16741289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6674c49a610bab05ffd3a5d9acfd2b0da364f143a74f9bdf3a2f82b1b3291555`  
		Last Modified: Thu, 05 Nov 2026 08:13:15 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c3e42e4bb3afe1d0c815e6fb3b8bd9b267fa543ddd060b6e5a45f394158694e`  
		Last Modified: Thu, 05 Nov 2026 08:13:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d88bb4bab7926aee0380eb09527f968d55c1931896d140b973bed5cdb3b81847
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b227043548cb7a16513ecfb073e4cfb2435456e1436e84dcf94230e84cc55df1`

```dockerfile
```

-	Layers:
	-	`sha256:23d23774be4919f3c7a62e2d26dfcdf028b7773b87d91d8f662cccc8b8bcca8c`  
		Last Modified: Thu, 05 Nov 2026 08:13:14 GMT  
		Size: 2.3 MB (2335378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5f2501b7412024d303576e3d54c5cbeb945f12078f710a7c60628d0002dc40f`  
		Last Modified: Thu, 05 Nov 2026 08:13:14 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:53d025f02199191c390216b92507b760c7e26375a03b574d70061807b9e9c371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144070836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c8db2d12791ed9aecfc7f8af6a8cc8a5a5ae92055eee575f1c29a8c4b65ada`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:21:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:21:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:21:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:21:19 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:21:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:21:20 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:22:38 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:22:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:22:38 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:22:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:22:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:22:39 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:22:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbee291a612b84e2b75f90410f6a58f6492282ab667be11280bf0acd632475d2`  
		Last Modified: Thu, 05 Nov 2026 08:22:59 GMT  
		Size: 92.6 MB (92633091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876ae4e676f04bfa203abfc6f2897aa559931b5a10bdb7415a665572c4ed4c05`  
		Last Modified: Thu, 05 Nov 2026 08:22:57 GMT  
		Size: 16.7 MB (16708095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9f53fac30a7d18754fd8cd148a564ceb14af83d0146da3ac71e2f864526593`  
		Last Modified: Thu, 05 Nov 2026 08:22:56 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac4a4e2f085b4f0f2abbcd38b426f7dabb177cc8d635237f78e38f220e7373f9`  
		Last Modified: Thu, 05 Nov 2026 08:22:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:34fc35066206768a28fa8438624fe858e5fa964e5d79496f5b162961612d6cee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2352852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdcef819b0e3b3eba2c03fbd57905c6d824fc044b0fb2a1fd922e59b58ffbd46`

```dockerfile
```

-	Layers:
	-	`sha256:1d730eba601a1a1146e33e00b1f212698b9a330b086b5e1527c701eebd967714`  
		Last Modified: Thu, 05 Nov 2026 08:22:56 GMT  
		Size: 2.3 MB (2334985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56b7ad5de34b68f1d1b66e7b8eb9752d187c73b044d2376e4b8a35a1371fe92f`  
		Last Modified: Thu, 05 Nov 2026 08:22:56 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ab6b1d8eda263b095cae61a3d6bf5d421e7e975d34f562b3a18dc7be30c37e6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.2 MB (147218407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3564c94fabc1716f790e4534c37fdd921fd2b59cdcda82f35672c73f424a46`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 16:19:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:19:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:19:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:19:04 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 16:19:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 16:19:04 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:23:27 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 16:23:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 16:23:27 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 16:23:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 16:23:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 16:23:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 16:23:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea18a9207438364f7efa683a4cfe98800d5dc3984d6c50c2aae84285294937e`  
		Last Modified: Thu, 05 Nov 2026 16:24:17 GMT  
		Size: 92.3 MB (92255791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff8c47e73484aef0cc5a3258b148ba59ad4febf9974ccbd71254b28b4830598`  
		Last Modified: Thu, 05 Nov 2026 16:24:14 GMT  
		Size: 16.8 MB (16779328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f340c9fc0d187b923b32759ec842b0c013f17c2d2fb818fda14b1cfc960ea48`  
		Last Modified: Thu, 05 Nov 2026 16:24:14 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d81afd5b7b5d565cffb2b5d8b678507319277f21c5fd3ab355ab87ee00cea7d`  
		Last Modified: Thu, 05 Nov 2026 16:24:13 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:75b631bb224c2723e977a5ffdea06dc0182f523172c208490485b01b76cc8f1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2338084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4c8738c78d8904e20aaece94dd0e9ac06eabc2e6e7f2a65f98bac4d6804c225`

```dockerfile
```

-	Layers:
	-	`sha256:fa38b3a917da3477f5f1cb549179758a546126f6a8572c4d7e0ddeaa700e5693`  
		Last Modified: Thu, 05 Nov 2026 16:24:14 GMT  
		Size: 2.3 MB (2320294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efbb975cad4876586e4ad14c45502a905723a0c2dc721965f1e6d9abdacad9fe`  
		Last Modified: Thu, 05 Nov 2026 16:24:13 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
