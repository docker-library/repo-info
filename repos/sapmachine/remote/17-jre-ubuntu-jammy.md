## `sapmachine:17-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:bdb5c60b7842d0cb1f9d045703d139648750457936bb9a932e6face7917bc786
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:b76cb711faf4fa3c9849028d3ea012626517702aed8ba688080be42a06e91892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87662943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85588787a823487dfa7c187a0ac1b9582abfb612fa302f25e23a6131da1d6ddb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:34:05 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.21.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:34:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 20 Nov 2026 03:34:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24cf7f88d8b53525a570a94a7915dcd2c0429ea7996dcbfde66302780a75ebe2`  
		Last Modified: Fri, 20 Nov 2026 03:34:18 GMT  
		Size: 57.6 MB (57593128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:17d41afb87526be00395c4b646809b638eb902919d83fd7fd09ef8b5cfbf7b55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc4f2a6d1570f053ed6a2c787ce09da3d3d6af2683e5a0d51a9b2d512519ff3`

```dockerfile
```

-	Layers:
	-	`sha256:6e435f3bd674c0bc28df3943453528024adac8eae9cd5ce5c2d637d9611b4684`  
		Last Modified: Fri, 20 Nov 2026 03:34:17 GMT  
		Size: 2.5 MB (2548309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d1e9eedc1110794e59830fc7160353e165c33222c96290b40ab4588e2091077`  
		Last Modified: Fri, 20 Nov 2026 03:34:17 GMT  
		Size: 9.5 KB (9488 bytes)  
		MIME: application/vnd.in-toto+json
