## `clojure:temurin-11-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:c92aebe44a9191644cc252293d2614a3768f283ba44413b376d9fc4f19651965
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:cf03a21ebd6cf9fd6f479e942c88d95733f10e17e766476264b5ca0038a66752
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196705823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d264ea5c318f44c74df5a4ac0aef6cddc2427c6b7de270f649938ab95da925`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:47:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:16 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:47:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:47:16 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:48:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:48:19 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:48:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:48:20 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e7cec399f9792b25e4b0888d9237c75538d2ac24e4b77d59fac01d54fbbec29`  
		Last Modified: Tue, 04 Aug 2026 02:48:39 GMT  
		Size: 145.9 MB (145886278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082b5f200a86a798a3a5266dd13fed95340f8f40b0e83b9c101ab1ee8dae7b04`  
		Last Modified: Tue, 04 Aug 2026 02:48:36 GMT  
		Size: 18.1 MB (18071692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91ca99c53f4342362a4cc420831adb0eb44f8026f6ea053ac441f24e251d1dc`  
		Last Modified: Tue, 04 Aug 2026 02:48:36 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7793ff6d862c49fc0d3bc9dbaf4ba30f7fe77af4b2efa860a07bca7288a6740e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1567d453544ed8cce90cc0944eb3ed70c6e56d13a511dd046af5d95ffc66d630`

```dockerfile
```

-	Layers:
	-	`sha256:22064bef71a5e86c1084dd3e01bb71416f8b1c8ab085ee90dc569fbe8f7ed0c4`  
		Last Modified: Tue, 04 Aug 2026 02:48:36 GMT  
		Size: 2.8 MB (2751889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26ede746ad7865083902d0435b9515f8710dc844c42c9945b11222f2319c7e82`  
		Last Modified: Tue, 04 Aug 2026 02:48:36 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ba33cdafa112dc4c3f4622e96f9f1c280c44fca4b0819f4145ee7d1c3ab8d16c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193108831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b0185f0f6571cc683ea621663f185ce75157bf88feea21b550811becd9364fd`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:47:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:39 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:47:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:47:39 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:46 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:48:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:48:46 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:48:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:48:47 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684dfe792dd13ddb863960bd779af5ac0e61458c695458f70013b94e05d86b95`  
		Last Modified: Tue, 04 Aug 2026 02:49:07 GMT  
		Size: 142.6 MB (142582307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b253c0eec2a6ab93a679a481f4472cbb65ea6159a01fbbcf04ebf7e6fe7dce`  
		Last Modified: Tue, 04 Aug 2026 02:49:05 GMT  
		Size: 17.9 MB (17894072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:120a0531901b61785f10a5d28beeb1428243df1f4976c400c9baeb6784e8531b`  
		Last Modified: Tue, 04 Aug 2026 02:49:04 GMT  
		Size: 4.5 MB (4515165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:57b86dd3bbaa4385b568713cd3030d3f296a3fd87bb122fac8d9cccda7262a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2df791db35f52138325959e332d019f9f58fe443055291870415b8d43f73eb`

```dockerfile
```

-	Layers:
	-	`sha256:ac63d715a8b53a4ccfd718ffbf7c9568a871e0609f3e9785822bffc5e470b4cc`  
		Last Modified: Tue, 04 Aug 2026 02:49:04 GMT  
		Size: 2.8 MB (2752122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1662b6be19662da857a2b105ac3122094eb53702fee5b5abea6fb97aff0e0cb0`  
		Last Modified: Tue, 04 Aug 2026 02:49:04 GMT  
		Size: 15.9 KB (15898 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:61dff0a5692a1fcf90115c08fba0480b3244c9db9e5d47bb05b4d2ee5640cbe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187965051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906efaed919eacac57ee0c5cbcc939e2a4935e8f994f4ebbe7698d3a142c159c`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:51:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:51:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:51:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:51:09 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 04:51:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 04:51:10 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 04:54:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 04:54:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 04:54:10 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 04:54:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 04:54:14 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e612fe9f24fea562cbdb3c63f471f93b466759f0727f3dc0b814e3056fc883ec`  
		Last Modified: Tue, 04 Aug 2026 04:54:48 GMT  
		Size: 133.1 MB (133109641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5cb20455d9d6a7e2d54a419613a83c8d6efbadfbef7f535fc679e42b35914d2`  
		Last Modified: Tue, 04 Aug 2026 04:54:45 GMT  
		Size: 18.3 MB (18263771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9aade37b2d9bde8da4ec442becec7ec1b0cddc9f67adf2ddf87b7d00fc43c59`  
		Last Modified: Tue, 04 Aug 2026 04:54:44 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d0502e9c54c70458edb30b696aac99bafdaa22d0f4017bcc262105f6fd37dd81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec2405ed76bc154128fc781d80bbeb5fa06ac095aec7dc65917d8843197f8df5`

```dockerfile
```

-	Layers:
	-	`sha256:0f1cd9939a04efd2840b2663d14e2d251558b85d41d0912ebaef255edd3147b2`  
		Last Modified: Tue, 04 Aug 2026 04:54:44 GMT  
		Size: 2.8 MB (2753107 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:febf355d4b8991887b1414df89373f53761cbc8d3446cff125401f53ce870e0a`  
		Last Modified: Tue, 04 Aug 2026 04:54:44 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:1159cacd7723a03b332fbcb7b3f502da66b4624206b3128ef4239b2e4b39c889
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175780600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f33882dcb1f7fe31781ac3921fbdfb3cb9dc0d3db7861526e20f3bb0892187`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:48:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:48:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:48:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:48:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:48:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:48:07 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:49:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:49:21 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:49:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:49:23 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a628df3bc4b8979eb35b19e174103d827ef21f8bebd6f7f511de67c5851da047`  
		Last Modified: Tue, 04 Aug 2026 02:49:48 GMT  
		Size: 126.7 MB (126652412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c4c492f301f783d06a1a8196102417b2c6614c6b9fc01229e8136ea1f8ac3b8`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 17.7 MB (17724690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4008a01ce877faee517b493e555ae118f82b633fdc498c146f105905ff1ea97d`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:18387bbba52242685bcb910592b43f78c0d888ec30777ee909b6086e0ab6777a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8cd93ea4d63f961a60459d90d13c769d9ca1dc296aed09decaf567491d6ac0e`

```dockerfile
```

-	Layers:
	-	`sha256:703bfca2458421063e15f7aaf811583e97c8a9634045ab2e1bade6d9f29f9c76`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 2.7 MB (2743707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bf67842c0f009ebe32df468e6d0d7ad25e948ef5c4d59d24ad843a2c0addf8f`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json
