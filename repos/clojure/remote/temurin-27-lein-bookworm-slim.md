## `clojure:temurin-27-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:c23727c9380d7fc242e927278ef57c6694c9bc690c6218044e128b58f70d535f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:96cd195c9db428939b24beb1a954857e20865e1be5286f2704d3aadb696d2dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144486505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27339c00919b9d85790c50b85bd187cb56512f1a85fcf5f8f3799e920944747`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 18:11:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:11:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:11:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:11:16 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:11:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:11:16 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:12:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:12:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:12:31 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:12:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:12:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:12:33 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:12:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8378ad15bdd8cac19f8bce407eee0a6f684dbecc5d495eee7a6dbd284fe2d6a`  
		Last Modified: Fri, 20 Nov 2026 18:12:54 GMT  
		Size: 93.6 MB (93649661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d53d82ce092474829a824501a9a77aa696a6ea45779adf975841b7e6e0f1738`  
		Last Modified: Fri, 20 Nov 2026 18:12:52 GMT  
		Size: 18.1 MB (18072723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f33f759f6c99e3e3e888b57dd18354e7a399df5050d66e7595e305ced0aec53`  
		Last Modified: Fri, 20 Nov 2026 18:12:52 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aef4bb1abd3404174166ec67a505ae46b76932c92c153d7f52a0fed110de3aa`  
		Last Modified: Fri, 20 Nov 2026 18:12:52 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3b804a5cc569146165d70dd6acb597f604ac761d8bf4b38492b5e4bcf283a725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ec5e2f9d5b41094d3eb988a063a23b38cbb6b02f3d53d90a38c9dfcbfad0da2`

```dockerfile
```

-	Layers:
	-	`sha256:a0ff113a624774a2d90e9afc1867c01d2261128623c3c3f84db71c2a70fefe51`  
		Last Modified: Fri, 20 Nov 2026 18:12:52 GMT  
		Size: 2.7 MB (2699969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48e4c45e91b225554186ffccdb07726a634ab4238adbc7ff88927f5d0b278635`  
		Last Modified: Fri, 20 Nov 2026 18:12:51 GMT  
		Size: 17.8 KB (17765 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ba894784172bddee488e0e8e0232f195c8fbe897154587d35dc0afc3931140f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143227475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51e10c58cd5dce50c2ea5e8a63c058d18fd93c12b9c94827b3c94d11cd2a1e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:07:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:07:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:07:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:07:40 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:07:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:07:40 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:08:51 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:08:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:08:51 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:08:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:08:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:08:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:08:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67389f4d3b61fcf5dc137b04ff57c871537065a898c47f12e48f3450a1ea826d`  
		Last Modified: Thu, 12 Nov 2026 01:09:13 GMT  
		Size: 92.7 MB (92660443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bbd0b697fe2c89c00913de02c98fcdd3f58d6075aae02b6fd0b6c5aa4bf2c70`  
		Last Modified: Thu, 12 Nov 2026 01:09:11 GMT  
		Size: 17.9 MB (17906529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634e188cf02b1f037746070f7b068ed16013a33123ca53cb6955bce134a35cff`  
		Last Modified: Thu, 12 Nov 2026 01:09:11 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0ee386345170d2b660fc78df2ac9792c3ad62d76cc43fc51f04ee54aa0a99c`  
		Last Modified: Thu, 12 Nov 2026 01:09:10 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:17a80e53e131d0a380db55b8ad49bad04ae1a53c4302064f98d922af0e82d40d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b63cde04e5c90cca3c780de09508aaf279331b9923d07d5ba5ad637d8d6eed05`

```dockerfile
```

-	Layers:
	-	`sha256:6d90d785bad831d1a7862b9504f3b75d21465ad785edffb74aca7ff7196bf1b4`  
		Last Modified: Thu, 12 Nov 2026 01:09:10 GMT  
		Size: 2.7 MB (2699589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4953e4efd52779ae43083db518615370a12f56c986cabd13df203e2098683ed9`  
		Last Modified: Thu, 12 Nov 2026 01:09:10 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e278d6d54c32f14e7268c33d8980f8d0389b67a7d76389a910e4bfcf026b81ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146822457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9829b23202777e0b69b2961b2bbeb5cc9656c2e48534eb3496b0b158ef06c1fd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:57:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:57:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:57:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:57:04 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:57:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:57:05 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 20:00:33 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 20:00:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 20:00:33 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 20:00:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 20:00:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 20:00:38 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 20:00:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac00a024d1c11ebe36f958fa3116dcf1da9fcec9c546b4ebb16040d750c0bb4b`  
		Last Modified: Fri, 20 Nov 2026 20:01:23 GMT  
		Size: 91.9 MB (91933325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd78878481f783d351340aae3967934efe35257687eede4c5e5981613b19a54`  
		Last Modified: Fri, 20 Nov 2026 20:01:19 GMT  
		Size: 18.3 MB (18279424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a05a604a4b226fd441ed4b696957707a9ac9b14e01f52adf3b9dbcff466f545d`  
		Last Modified: Fri, 20 Nov 2026 20:01:19 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26f941a257c0d100e1dd0da26a84ac33b834502f0ea24d619a2d07a88fb3530`  
		Last Modified: Fri, 20 Nov 2026 20:01:19 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0fc67c94ffbb40e1da3ff4a37e79a0cf740a5a43e76c0120b075086ba3f335a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2701687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6da1917a5bbd4e5b208af8587bedd660086136bbf57032f66bf3245186304f5`

```dockerfile
```

-	Layers:
	-	`sha256:21eba0f8a7c7c5970c96a5d1ce7202290c9b09de68dbe5d8e2162b65642c8183`  
		Last Modified: Fri, 20 Nov 2026 20:01:19 GMT  
		Size: 2.7 MB (2683877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92b34804dbc17f7a34702ff02bd2ed618397a75060ab6c3241fb404963ae0fcf`  
		Last Modified: Fri, 20 Nov 2026 20:01:19 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
