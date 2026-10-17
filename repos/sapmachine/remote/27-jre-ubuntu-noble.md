## `sapmachine:27-jre-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:d5b7382b1e0bbdd6ada729581a65b18fac6afee54418aeb5f1041c9ba8589621
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:b521d7ed3fcf4fad6596026ee73dfafc54012268fd46b460b5c95c67fa5a67a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.0 MB (93023630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e839adffca35ef1bace8c2ce1b1cf23977bdeeae8ed3d00a35d7947415c9a15`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:18 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f36e5c4591c30cecc0404721f0752ce0622e8f3301a39c065017a98ae3efae`  
		Last Modified: Fri, 02 Oct 2026 01:37:33 GMT  
		Size: 63.3 MB (63259208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:78724829f4ec195e47794e975f15490fc8a38795364f8a8c17537c9490728ee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2535630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023bab4e46a04b814e46ba4cf8bf4b22396d6fc676109857b165274bde2db138`

```dockerfile
```

-	Layers:
	-	`sha256:60910505959a487eb0a4d02b80f4a9f28e0e61fdbbf021ad4bc918f98622a9df`  
		Last Modified: Fri, 02 Oct 2026 01:37:31 GMT  
		Size: 2.5 MB (2524923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0eaa18d0dd1497e314beaffaa444ddc4e4d770c986e044b71819152c3ffc9ce`  
		Last Modified: Fri, 02 Oct 2026 01:37:31 GMT  
		Size: 10.7 KB (10707 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:cf0bb53b308886b6a288bf66108e8b2b2beda5caaa771df9963db405c47bc921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88822802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc8567440d23a70b17e4dd89c896c369158f35e72d1ae8dcf7bd8a16982e5d3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:37:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 00:37:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c305f8e026f3ccc7f8ca37e8ffe6c1de4e0c41869443c33e9d25330dda52cc`  
		Last Modified: Sat, 17 Oct 2026 00:38:10 GMT  
		Size: 59.9 MB (59883041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e051e678ed319b1dd5571f4fac34e6032203827ef3982c862cad20cc34373489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2536318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6b092b89ad6ec402ab0abfaf7935426e798b13059d8fb31275afdca1a2f7de9`

```dockerfile
```

-	Layers:
	-	`sha256:4eb970c1e2e32177ec43132a8f75856b0cfecc7f22ab91dc5a1096c6b318dc35`  
		Last Modified: Sat, 17 Oct 2026 00:38:09 GMT  
		Size: 2.5 MB (2525460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3556ab7306573d689a715927e538b6e3be3506c6f0bd54e09f9ff7dbc2858e6b`  
		Last Modified: Sat, 17 Oct 2026 00:38:09 GMT  
		Size: 10.9 KB (10858 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:0d643474eb096219805938856376c1f5769d4f9be6139b94de9f4174b6dfe63a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97283516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d51d717504ebb04177af94ec6d7459aadc9724fa58cafc24e1117717b880a79`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:27:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:27:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 05:27:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70841eb433911a63fb682db907ee4290310eb251a341d50a8a0adf5526aac9ea`  
		Last Modified: Fri, 02 Oct 2026 05:27:52 GMT  
		Size: 62.9 MB (62907007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:02eff381eaf320b5c2cd7a7117fe337be313fbb45b1312c186fd2df8a830e593
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2534566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9858ce6f13099ede7ee8fd618083b8b271f364fdbe3d4b18822b1cd38c387764`

```dockerfile
```

-	Layers:
	-	`sha256:887b095c1240bc9ac82d79576113ca7a1379dfcdc526d5efa312cbe4e543992f`  
		Last Modified: Fri, 02 Oct 2026 05:27:50 GMT  
		Size: 2.5 MB (2523791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3aa38b093421424822b72734dec992c4d04ac9d8b16220c30852eecb9fe2ceb`  
		Last Modified: Fri, 02 Oct 2026 05:27:49 GMT  
		Size: 10.8 KB (10775 bytes)  
		MIME: application/vnd.in-toto+json
